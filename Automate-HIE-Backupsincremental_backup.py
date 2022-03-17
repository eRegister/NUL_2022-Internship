#! /usr/bin/bash

#enable mysql to start writing to new binary log file
mysqladmin -uroot -p1011 flush-logs

#take an ascending order list of all bianry log files except the last
bin_log_files=$(ls -tr /var/log/mysql/mysql-bin.* | head -n -1)

#Copy SQL of all binary files in .sql file 
mysqlbinlog ${bin_log_files} > /home/moletsane/incremental_backups/incremetal_backup_$(date +%d_%m_%Y).sql

#Zip SQL file
gzip /home/moletsane/incremental_backups/incremetal_backup_$(date +%d_%m_%Y).sql

#Take time before shifting mysql logging to new binary log file
current_time=$(date +%Y-%m-%d" "%H:%M:%S)

#Remove all used binary log files
sudo mysql -E --execute="PURGE BINARY LOGS BEFORE '$(date +%Y-%m-%d" "%H:%M:%S)'"
