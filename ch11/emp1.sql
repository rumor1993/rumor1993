--<2 . ��Ŭ�������� �����ϴ� ���>

create table emp1
as
select * from emp;
-- ���� ���� �� ALT+C

drop procedure del_all;

create or replace procedure del_all
is

begin
	delete from emp1;
end;
-- ���� ���� �� ALT+C


select * from emp1;

select * from emp;


create table emp2
as
select * from emp;
-- ���� ���� �� ALT+C

create or replace procedure
	del_name(vename emp.ename%TYPE)
is
 begin
	 delete from emp2 where ename = vename;
 end;
 -- ���� ������ ALT+C 

select * from emp2;

select * from emp;
