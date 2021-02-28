---- db: -h localhost -p 5400 -U postgres postgres
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
