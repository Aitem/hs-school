---- db: -h localhost -p 5400 -U postgres postgres
---- db: -h localhost -p 5437 -U postgres devbox

select * from pg_replication_slots;


SELECT
*
--pid ,wait_event, age(clock_timestamp(), query_start) ,query
FROM pg_stat_activity
WHERE
  query != '<IDLE>'
  AND query NOT ILIKE '%pg_stat_activity%'
  AND "state" = 'active'
ORDER BY query_start  nulls last;



----
SELECT
pg_l.objid,
pg_l.pid,
pg_sa.application_name,
pg_sa.backend_start,
age(clock_timestamp(), pg_sa.backend_start) as "process_time",
age(clock_timestamp(), pg_sa.query_start) as "qeury_time"

FROM pg_locks as pg_l
left join  pg_stat_activity as pg_sa
on pg_sa.pid = pg_l.pid
WHERE locktype = 'advisory';
----

select ....


where <left> OP <right>

btree
= > <
text
int

int > int
text = text

on diagnosticreport using gin ((resource) jsonb_path_value_ops);
jsonb @@ jsquery

on diagnosticreport using gin ((resource));
jsonb @> jsonb
----
\d+ flag
----
drop index flag_resource;
----
create index flag_resource
on flag
using gin (resource jsonb_path_value_ops);
----
select count(*) from flag;
----
select jsonb_pretty(resource)
from flag
limit 1;
----
explain analyze
select resource #>> '{period,end}', count(*)
from flag
limit 1

----
explain analyze
select resource #>> '{period,end}',  count(*)
from flag
where resource #>> '{period,end}' > '2020-11-10'
group by resource #>> '{period,end}'
order by resource #>> '{period,end}' desc
-- nulls last
limit 1

----
\d+ flag
----

1 2 3 4 5 6 null null null null

----
explain analyze
select count(*)
from flag
where resource ? 'period'
--where resource @> '{"period": {"start": "2019-10-15"}}';
----


explain (analyze, costs off)
  select o.resource #>> '{value, Quantity, value}' weight
         , p.resource #>>'{name, 0, family}' "family"
    from observation o
    join patient p
      on p.id = right(o.resource#>>'{subject, uri}', 36)
   where o.resource  @> '{"code": {"coding": [{"code": "29463-7", "system": "http://loinc.org"}]}}'
order by o.resource #>> '{value, Quantity, value}' desc
   limit 1
----
  create index observation_resource_gin
  on observation
  using gin (resource) ;

----
    "period": {
        "end": "1983-04-02T15:13:59+04:00",
        "start": "1983-04-02T14:58:59+04:00"
    },
----
create index e
----
select count(*) from encounter;
----
select count(*)
from encounter
where resource#>>'{period,start}' < '1983-04-03T15:13:59+04:00'
  and resource#>>'{period,end}'   > '1983-04-01T15:13:59+04:00'
----
........|..=.....|........=.....
----
\x
\a
select jsonb_pretty(resource)
from  encounter
order by random()
limit 1;
----

  create index observation_resource_gist
  on observation
  using gist (resource) ;
----
vacuum analyze observation;
----

---- Standart protocol
select count(*) from patient;
----

---- Extended protocol
-- Prepared statement

\timing

PREPARE selectpt (text) AS
    select id from patient where id = $1;

EXECUTE selectpt('foo');

\x
select  * from pg_prepared_statements;

----
select count(*) from patient;
----
-- Cursor

BEGIN;
DECLARE crs CURSOR FOR SELECT id FROM entity;
FETCH 5 from crs;
FETCH 5 from crs;
FETCH  backward 5 from crs;
END;

----
-- Seq scan

explain (costs off, analyze, buffers)
select count(*) from observation;
set   max_parallel_workers_per_gather = 8;
explain (costs off, analyze, buffers)
select count(*) from observation;
----
select count(*) from observation;
----
\x
\a
  select jsonb_pretty(resource->'telecom')
    from patient
order by random()
   limit 1;
----
\x
\a
select jsonb_pretty(resource)
from observation
order by random()
limit 1;
----
select right ('urn:uuid:2a43b8f7-f7a4-a5ce-3ead-5fbae7748840', 36)
----
\x
\a
select c.id cid, p.id pid
from condition c
join patient p
on p.id = right(c.resource#>>'{subject,uri}', 36)
limit 10;
----
select count(*) from condition;
----
\x
\a
select jsonb_pretty(resource)
from condition
limit 1;
----
select id
from patient
where id =
urn:uuid:ef83a9f0-5d52-f0be-3997-90d9fb07905d
;
----

  #+BEGIN_SRC sql :results value drawer
----
CarePlan: 5720
Observation: 447093
SupplyDelivery: 13868
MedicationAdministration: 1634
DocumentReference: 68829
PractitionerRole: 1165
Patient: 1250
DiagnosticReport: 103810
Provenance: 1250
Practitioner: 1165
ExplanationOfBenefit: 68829
Immunization: 16256
Claim: 144313
MedicationRequest: 75484
Encounter: 68829
Medication: 1634
Condition: 16222
CareTeam: 5720
Procedure: 45093
Location: 1163
Organization: 1163
Device: 263
AllergyIntolerance: 518
ImagingStudy: 977
----