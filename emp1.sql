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