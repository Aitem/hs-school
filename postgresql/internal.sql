---- db: -h localhost -p 5437 -U postgres devbox
create extension pageinspect;
----
select count(*) from patient;
----
select get_raw_page('patient', 'main', 0);
----
SELECT * FROM page_header(get_raw_page('patient', 'main', 0));
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
