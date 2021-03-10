---- db: -h localhost -p 5400 -U postgres postgres

---- db: -h localhost -p 5439 -U postgres testbox
with recursive
items as
(
  select ARRAY[t.k] pth, t.v val
  from organization
     , jsonb_each(resource) t(k,v)
  union
  select pth || ARRAY[t.k] , t.v val
  from items, jsonb_each(val) t(k, v)
  where jsonb_typeof(val) = 'object'
)
, total as
(
  select count(*) t from organization
)
select pth, count(*) cnt , (count(*)::float / (select t from total))
from items
group by pth
order by cnt desc

----


----

select k.*
from (select  resource from practitioner limit 1) t(resource),
jsonb_each(resource)  k(k,v)
;

----


select jsonb_pretty(resource)
from practitioner
limit 10;














----
-- TCL block samples

select * from sample;

----
begin;
insert into sample (id)
select * from generate_series(0, 10);
commit;

----
select * from sample;
----

begin;
delete from sample;
select * from sample;
rollback;
----
