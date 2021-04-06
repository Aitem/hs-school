---- db: -h localhost -p 5437 -U postgres devbox

----
create extension if not exists pageinspect;
create table if not exists mvcc_test (id int);

truncate mvcc_test;
vacuum analyze mvcc_test;
insert into mvcc_test (id) values (1);
update mvcc_test set id = 2 where id = 1;
update mvcc_test set id = 3 where id = 2;
update mvcc_test set id = 4 where id = 3;

insert into mvcc_test (id) values (5);
update mvcc_test set id = 6 where id = 5;

-- Page befor vacuum
SELECT * FROM heap_page_items(get_raw_page('mvcc_test', 0));
-- Page after vacuum
vacuum analyze mvcc_test;
SELECT * FROM heap_page_items(get_raw_page('mvcc_test', 0));
-- Page after vacuum full
vacuum full mvcc_test;
SELECT * FROM heap_page_items(get_raw_page('mvcc_test', 0));
----
insert into mvcc_test (id)
select id from generate_series(10, 100) id;



----
SELECT * FROM heap_page_items(get_raw_page('mvcc_test', 0));
----
checkpoint
----
    select pg_relation_filepath('mvcc_test');
----


create extension pageinspect;
----
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- Get data shanpshot (xmax) 1024
select count(*) from mvcc_test;
insert into mvcc_test (id ) values (2); -- 1024
select count(*) from mvcc_test;
rollback;

----
select count(*) from patient;
----
select get_raw_page('patient', 'main', 0);
----
SELECT * FROM page_header(get_raw_page('mvcc_test', 'main', 0));
----



----
SELECT first_tid, nbytes
  FROM gin_leafpage_items(get_raw_page('patient_resource_gin', 2));
----
SELECT * FROM gin_page_opaque_info(get_raw_page('patient_resource_gin', 2));

----
select xmin, ctid from observation limit 10;
----
SELECT fsm_page_contents(get_raw_page('pg_class', 'fsm', 0));
----
select resource from observation where ctid = '(63315,1)' limit 1;
----
\x
\a
SELECT  get_raw_page('observation_resource_gin', 20);
----
SELECT first_tid, nbytes, tids[0:5] AS some_tids
        FROM gin_leafpage_items(get_raw_page('observation_resource_gin', 20));

----
SELECT * FROM gin_metapage_info(get_raw_page('patient_resource_gin', 190));
----
vacuum analyze observation
----
SELECT * FROM gin_page_opaque_info(get_raw_page('patient_resource_gin', 190));
----
create index observation_resource_gin
on observation
using gin (resource);
----
\d+ observation
----
select count(*) from observation;
----
checkpoint
