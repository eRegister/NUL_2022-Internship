# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#220409 21:00:54 server id 1  end_log_pos 126 CRC32 0x977d2eed 	Start: binlog v 4, server v 8.0.28-0ubuntu0.20.04.3 created 220409 21:00:54
BINLOG '
RixSYg8BAAAAegAAAH4AAAAAAAQAOC4wLjI4LTB1YnVudHUwLjIwLjA0LjMAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAe0ufZc=
'/*!*/;
# at 126
#220409 21:00:54 server id 1  end_log_pos 157 CRC32 0x894ffe79 	Previous-GTIDs
# [empty]
# at 157
#220409 21:10:31 server id 1  end_log_pos 236 CRC32 0x3dabe054 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=yes	original_committed_timestamp=1649553031652971	immediate_commit_timestamp=1649553031652971	transaction_length=333
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1649553031652971 (2022-04-09 21:10:31.652971 EDT)
# immediate_commit_timestamp=1649553031652971 (2022-04-09 21:10:31.652971 EDT)
/*!80001 SET @@session.original_commit_timestamp=1649553031652971*//*!*/;
/*!80014 SET @@session.original_server_version=80028*//*!*/;
/*!80014 SET @@session.immediate_server_version=80028*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 236
#220409 21:10:31 server id 1  end_log_pos 325 CRC32 0xd821b791 	Query	thread_id=163	exec_time=0	error_code=0
SET TIMESTAMP=1649553031/*!*/;
SET @@session.pseudo_thread_id=163/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=255,@@session.collation_connection=255,@@session.collation_server=255/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
BEGIN
/*!*/;
# at 325
#220409 21:10:31 server id 1  end_log_pos 399 CRC32 0x96552a90 	Table_map: `student_results_db`.`buddies` mapped to number 171
# at 399
#220409 21:10:31 server id 1  end_log_pos 459 CRC32 0x08a7c8ca 	Write_rows: table id 171 flags: STMT_END_F

BINLOG '
hy5SYhMBAAAASgAAAI8BAAAAAKsAAAAAAAEAEnN0dWRlbnRfcmVzdWx0c19kYgAHYnVkZGllcwAC
Dw8EUABQAAICA/z/AJAqVZY=
hy5SYh4BAAAAPAAAAMsBAAAAAKsAAAAAAAEAAgAC/wAHTmVvZXVpbw9zaG9ydCBmYXJpZWhpbzvK
yKcI
'/*!*/;
# at 459
#220409 21:10:31 server id 1  end_log_pos 490 CRC32 0x04173ed6 	Xid = 3803
COMMIT/*!*/;
# at 490
#220409 21:11:12 server id 1  end_log_pos 569 CRC32 0x2f55318b 	Anonymous_GTID	last_committed=1	sequence_number=2	rbr_only=yes	original_committed_timestamp=1649553072333159	immediate_commit_timestamp=1649553072333159	transaction_length=324
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1649553072333159 (2022-04-09 21:11:12.333159 EDT)
# immediate_commit_timestamp=1649553072333159 (2022-04-09 21:11:12.333159 EDT)
/*!80001 SET @@session.original_commit_timestamp=1649553072333159*//*!*/;
/*!80014 SET @@session.original_server_version=80028*//*!*/;
/*!80014 SET @@session.immediate_server_version=80028*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 569
#220409 21:11:12 server id 1  end_log_pos 658 CRC32 0x0b93ab70 	Query	thread_id=163	exec_time=0	error_code=0
SET TIMESTAMP=1649553072/*!*/;
BEGIN
/*!*/;
# at 658
#220409 21:11:12 server id 1  end_log_pos 732 CRC32 0x60a7d889 	Table_map: `student_results_db`.`buddies` mapped to number 171
# at 732
#220409 21:11:12 server id 1  end_log_pos 783 CRC32 0x85bf56e6 	Write_rows: table id 171 flags: STMT_END_F

BINLOG '
sC5SYhMBAAAASgAAANwCAAAAAKsAAAAAAAEAEnN0dWRlbnRfcmVzdWx0c19kYgAHYnVkZGllcwAC
Dw8EUABQAAICA/z/AInYp2A=
sC5SYh4BAAAAMwAAAA8DAAAAAKsAAAAAAAEAAgAC/wADTmVvCnNoYmhnbWtqbDvmVr+F
'/*!*/;
# at 783
#220409 21:11:12 server id 1  end_log_pos 814 CRC32 0xc785a988 	Xid = 3806
COMMIT/*!*/;
# at 814
#220409 21:16:40 server id 1  end_log_pos 893 CRC32 0x92e4af21 	Anonymous_GTID	last_committed=2	sequence_number=3	rbr_only=yes	original_committed_timestamp=1649553400232670	immediate_commit_timestamp=1649553400232670	transaction_length=324
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1649553400232670 (2022-04-09 21:16:40.232670 EDT)
# immediate_commit_timestamp=1649553400232670 (2022-04-09 21:16:40.232670 EDT)
/*!80001 SET @@session.original_commit_timestamp=1649553400232670*//*!*/;
/*!80014 SET @@session.original_server_version=80028*//*!*/;
/*!80014 SET @@session.immediate_server_version=80028*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 893
#220409 21:16:40 server id 1  end_log_pos 982 CRC32 0xb97328f5 	Query	thread_id=163	exec_time=0	error_code=0
SET TIMESTAMP=1649553400/*!*/;
BEGIN
/*!*/;
# at 982
#220409 21:16:40 server id 1  end_log_pos 1056 CRC32 0x41d56cbe 	Table_map: `student_results_db`.`buddies` mapped to number 171
# at 1056
#220409 21:16:40 server id 1  end_log_pos 1107 CRC32 0xe45c7d0f 	Delete_rows: table id 171 flags: STMT_END_F

BINLOG '
+C9SYhMBAAAASgAAACAEAAAAAKsAAAAAAAEAEnN0dWRlbnRfcmVzdWx0c19kYgAHYnVkZGllcwAC
Dw8EUABQAAICA/z/AL5s1UE=
+C9SYiABAAAAMwAAAFMEAAAAAKsAAAAAAAEAAgAC/wADTmVvCnNoYmhnbWtqbDsPfVzk
'/*!*/;
# at 1107
#220409 21:16:40 server id 1  end_log_pos 1138 CRC32 0xa0736f27 	Xid = 3808
COMMIT/*!*/;
# at 1138
#220409 21:20:51 server id 1  end_log_pos 1217 CRC32 0xcadc2c7f 	Anonymous_GTID	last_committed=3	sequence_number=4	rbr_only=yes	original_committed_timestamp=1649553651075434	immediate_commit_timestamp=1649553651075434	transaction_length=333
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1649553651075434 (2022-04-09 21:20:51.075434 EDT)
# immediate_commit_timestamp=1649553651075434 (2022-04-09 21:20:51.075434 EDT)
/*!80001 SET @@session.original_commit_timestamp=1649553651075434*//*!*/;
/*!80014 SET @@session.original_server_version=80028*//*!*/;
/*!80014 SET @@session.immediate_server_version=80028*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1217
#220409 21:20:51 server id 1  end_log_pos 1306 CRC32 0xf6414157 	Query	thread_id=163	exec_time=0	error_code=0
SET TIMESTAMP=1649553651/*!*/;
BEGIN
/*!*/;
# at 1306
#220409 21:20:51 server id 1  end_log_pos 1380 CRC32 0x8ac84bc2 	Table_map: `student_results_db`.`buddies` mapped to number 171
# at 1380
#220409 21:20:51 server id 1  end_log_pos 1440 CRC32 0x2cf70402 	Delete_rows: table id 171 flags: STMT_END_F

BINLOG '
8zBSYhMBAAAASgAAAGQFAAAAAKsAAAAAAAEAEnN0dWRlbnRfcmVzdWx0c19kYgAHYnVkZGllcwAC
Dw8EUABQAAICA/z/AMJLyIo=
8zBSYiABAAAAPAAAAKAFAAAAAKsAAAAAAAEAAgAC/wAHTmVvZXVpbw9zaG9ydCBmYXJpZWhpbzsC
BPcs
'/*!*/;
# at 1440
#220409 21:20:51 server id 1  end_log_pos 1471 CRC32 0x756f0c25 	Xid = 3836
COMMIT/*!*/;
# at 1471
#220409 21:10:31 server id 1  end_log_pos 1557 CRC32 0x3d695d30 	Anonymous_GTID	last_committed=4	sequence_number=5	rbr_only=yes	original_committed_timestamp=1649553031652971	immediate_commit_timestamp=1649553663255073	transaction_length=340
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1649553031652971 (2022-04-09 21:10:31.652971 EDT)
# immediate_commit_timestamp=1649553663255073 (2022-04-09 21:21:03.255073 EDT)
/*!80001 SET @@session.original_commit_timestamp=1649553031652971*//*!*/;
/*!80014 SET @@session.original_server_version=80028*//*!*/;
/*!80014 SET @@session.immediate_server_version=80028*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1557
#220409 21:10:31 server id 1  end_log_pos 1646 CRC32 0x1be62a9f 	Query	thread_id=163	exec_time=632	error_code=0
SET TIMESTAMP=1649553031/*!*/;
SET @@session.sql_mode=524288/*!*/;
BEGIN
/*!*/;
# at 1646
#220409 21:10:31 server id 1  end_log_pos 1720 CRC32 0x7f8e0e8a 	Table_map: `student_results_db`.`buddies` mapped to number 171
# at 1720
#220409 21:10:31 server id 1  end_log_pos 1780 CRC32 0xa7b5a962 	Write_rows: table id 171 flags: STMT_END_F

BINLOG '
hy5SYhMBAAAASgAAALgGAAAAAKsAAAAAAAEAEnN0dWRlbnRfcmVzdWx0c19kYgAHYnVkZGllcwAC
Dw8EUABQAAICA/z/AIoOjn8=
hy5SYh4BAAAAPAAAAPQGAAAAAKsAAAAAAAEAAgAC/wAHTmVvZXVpbw9zaG9ydCBmYXJpZWhpbzti
qbWn
'/*!*/;
# at 1780
#220409 21:10:31 server id 1  end_log_pos 1811 CRC32 0x246c1bbe 	Xid = 3862
COMMIT/*!*/;
# at 1811
#220409 21:11:12 server id 1  end_log_pos 1897 CRC32 0xb3fe3f86 	Anonymous_GTID	last_committed=5	sequence_number=6	rbr_only=yes	original_committed_timestamp=1649553072333159	immediate_commit_timestamp=1649553663270085	transaction_length=331
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1649553072333159 (2022-04-09 21:11:12.333159 EDT)
# immediate_commit_timestamp=1649553663270085 (2022-04-09 21:21:03.270085 EDT)
/*!80001 SET @@session.original_commit_timestamp=1649553072333159*//*!*/;
/*!80014 SET @@session.original_server_version=80028*//*!*/;
/*!80014 SET @@session.immediate_server_version=80028*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1897
#220409 21:11:12 server id 1  end_log_pos 1986 CRC32 0x9296621e 	Query	thread_id=163	exec_time=591	error_code=0
SET TIMESTAMP=1649553072/*!*/;
BEGIN
/*!*/;
# at 1986
#220409 21:11:12 server id 1  end_log_pos 2060 CRC32 0x998acd10 	Table_map: `student_results_db`.`buddies` mapped to number 171
# at 2060
#220409 21:11:12 server id 1  end_log_pos 2111 CRC32 0xdc974ccf 	Write_rows: table id 171 flags: STMT_END_F

BINLOG '
sC5SYhMBAAAASgAAAAwIAAAAAKsAAAAAAAEAEnN0dWRlbnRfcmVzdWx0c19kYgAHYnVkZGllcwAC
Dw8EUABQAAICA/z/ABDNipk=
sC5SYh4BAAAAMwAAAD8IAAAAAKsAAAAAAAEAAgAC/wADTmVvCnNoYmhnbWtqbDvPTJfc
'/*!*/;
# at 2111
#220409 21:11:12 server id 1  end_log_pos 2142 CRC32 0x86b5a8a2 	Xid = 3872
COMMIT/*!*/;
# at 2142
#220409 21:25:30 server id 1  end_log_pos 2189 CRC32 0xef343063 	Rotate to mysql-bin.000083  pos: 4
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
# at 4
#220409 21:25:30 server id 1  end_log_pos 126 CRC32 0xf6a6a368 	Start: binlog v 4, server v 8.0.28-0ubuntu0.20.04.3 created 220409 21:25:30
BINLOG '
CjJSYg8BAAAAegAAAH4AAAAAAAQAOC4wLjI4LTB1YnVudHUwLjIwLjA0LjMAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAWijpvY=
'/*!*/;
# at 126
#220409 21:25:30 server id 1  end_log_pos 157 CRC32 0x488a43d6 	Previous-GTIDs
# [empty]
# at 157
#220409 21:26:45 server id 1  end_log_pos 204 CRC32 0xcfc496b5 	Rotate to mysql-bin.000084  pos: 4
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
