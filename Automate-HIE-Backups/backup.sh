#! /usr/bin/bash

dow=$(date +%u)
echo "${dow}"

current_time=$(date +%Y-%m-%d" "%H:%M:%S)

#create backup folder if non-existent
if [ ! -d "/home/moletsane/backup" ]
then        
    echo "creating backup directory..."
    mkdir /home/moletsane/backup
        
fi

if [ $dow == 5 ]
then #take take full backup
    
    mysqladmin -uroot -p1011 flush-logs
    
    mysqldump -uroot -p1011 student_results_db > /home/moletsane/backup/full_backup_$(date +%d_%m_%Y).sql
    
    gzip /home/moletsane/backup/full_backup_$(date +%d_%m_%Y).sql

else #take incremental backup
    
    #enable mysql to start writing to new binary log file
    mysqladmin -uroot -p1011 flush-logs

    #take an ascending order list of all bianry log files except the last
    bin_log_files=$(ls -tr /var/log/mysql/mysql-bin.* | head -n -1)

    #Copy SQL of all binary files in .sql file 
    mysqlbinlog ${bin_log_files} > /home/moletsane/backup/incremetal_backup_$(date +%d_%m_%Y).sql

    #Zip SQL file
    gzip /home/moletsane/backup/incremetal_backup_$(date +%d_%m_%Y).sql

fi

#Remove all used binary log files
mysql -E --execute="PURGE BINARY LOGS BEFORE '${current_time}'"

#send backup to cloud
