---- db: -h localhost -p 5400 -U postgres postgres

-- TCL block samples

select * from sample;
----
----
begin;
insert into sample (id)
select i from generate_series(0, 10) t(i);
commit;

----
select * from sample;
----

begin;
delete from sample;
select * from sample;
rollback;
----
\x
show all
----
