---- db: -h localhost -p 5437 -U postgres devbox

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
