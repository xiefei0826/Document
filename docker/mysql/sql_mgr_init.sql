-- set sql_log_bin=0;
-- install plugin group_replication soname 'group_replication.so';
-- SET GLOBAL group_replication_group_name="aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee";
-- SET GLOBAL group_replication_start_on_boot=off;
-- SET GLOBAL group_replication_local_address="mgr1:33061";
-- SET GLOBAL group_replication_group_seeds="mgr1:33061,mgr2:33061,mgr3:33061";
-- SET GLOBAL group_replication_bootstrap_group=off;
-- create user rpl@'%' identified by '123456';
-- grant replication slave on *.* to rpl@'%';
-- grant backup_admin on *.* to rpl@'%';
-- FLUSH PRIVILEGES;
-- set sql_log_bin=1;
-- change master to master_user='rpl',master_password='123456' for channel 'group_replication_recovery';


-- set sql_log_bin=0;
-- install plugin group_replication soname 'group_replication.so';
-- SET GLOBAL group_replication_group_name="aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee";
-- SET GLOBAL group_replication_start_on_boot=off;
-- SET GLOBAL group_replication_local_address="mgr2:33061";
-- SET GLOBAL group_replication_group_seeds="mgr1:33061,mgr2:33061,mgr3:33061";
-- SET GLOBAL group_replication_bootstrap_group=off;
-- create user rpl@'%' identified by '123456';
-- grant replication slave on *.* to rpl@'%';
-- grant backup_admin on *.* to rpl@'%';
-- set sql_log_bin=1;
-- change master to master_user='rpl',master_password='123456' for channel 'group_replication_recovery';

-- set sql_log_bin=0;
-- install plugin group_replication soname 'group_replication.so';
-- SET GLOBAL group_replication_group_name="aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee";
-- SET GLOBAL group_replication_start_on_boot=off;
-- SET GLOBAL group_replication_local_address="mgr3:33061";
-- SET GLOBAL group_replication_group_seeds="mgr1:33061,mgr2:33061,mgr3:33061";
-- SET GLOBAL group_replication_bootstrap_group=off;
-- create user rpl@'%' identified by '123456';
-- grant replication slave on *.* to rpl@'%';
-- grant backup_admin on *.* to rpl@'%';
-- set sql_log_bin=1;
-- change master to master_user='rpl',master_password='123456' for channel 'group_replication_recovery';



-- 只有第一个服务器这样运行， 后边服务器只运行第二条语句
-- SET GLOBAL group_replication_bootstrap_group=ON;
-- START GROUP_REPLICATION;
-- SET GLOBAL group_replication_bootstrap_group=OFF;

-- 查看当前组内的服务
-- SELECT * FROM performance_schema.replication_group_members\G;

-- select * from performance_schema.replication_group_member_stats \G ;