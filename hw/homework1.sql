create table codes (id serial, code varchar(8), "desc" varchar(22));

insert into codes (code, "desc") values
('A', 'Some value'),
('A.1', 'Some sub value'),
('A.1.01', 'Some sub sub value 1'),
('A.1.02','Some sub sub value 2'),
('A.1.02.1', 'Some sub sub value 2.1');

create table items (id serial, code varchar(8), display text, path jsonb);

insert into items
select generate_series(1, 1000000), 'A.1.02.1', 'Some static item num ' || generate_series(1, 1000000), null;

create function get_code_parents(in code text, out ct jsonb)
as 'WITH recursive _code_parts AS
(
       SELECT 1               AS idx,
              array[]::text[] AS acc
       UNION
       SELECT idx+1 AS idx,
              array_append(acc,
              (
                     SELECT concat_ws(''.'', acc[array_upper(acc, 1)], split_part(code, ''.'', idx)))) AS acc
       FROM   _code_parts
       WHERE  idx <
              (
                     SELECT array_length(regexp_split_to_array(code, ''\.''), 1))), code_parts AS
(
         SELECT   acc
         FROM     _code_parts
         ORDER BY idx DESC limit 1 ), unnested_code_parts AS
(
       SELECT unnest(acc) code_part
       FROM   code_parts ), _path AS
(
          SELECT    jsonb_agg(jsonb_build_object(''code'', cd.code, ''desc'', cd.DESC))
          FROM      unnested_code_parts
          LEFT JOIN codes cd
          ON        cd.code = code_part)
  select * from _path'
  LANGUAGE SQL;

UPDATE items
SET path = get_code_parents(code);
