#! /usr/bin/bash
#! /home/seipobi/.local/bin/graph-onedrive
#! /usr/bin/python3

dow=$(date +%u)
echo "${dow}"

current_time=$(date +%Y-%m-%d" "%H:%M:%S)

#create backup folder if non-existent
if [ ! -d "/home/seipobi/backup" ]
then        
    echo "creating backup directory..."
    mkdir /home/seipobi/backup
        
fi

#enable mysql to start writing to new binary log file
mysqladmin -uroot flush-logs

if [ $dow == 5 ]
then #take take full backup
        
    mysqldump -uroot student_results_db > /home/seipobi/backup/full_backup_$(date +%d_%m_%Y).sql
    
    gzip /home/seipobi/backup/full_backup_$(date +%d_%m_%Y).sql

else #take incremental backup

    #take an ascending order list of all bianry log files except the last
    bin_log_files=$(ls -tr /var/log/mysql/mysql-bin.* | head -n -2)

    #Copy SQL of all binary files in .sql file 
    mysqlbinlog ${bin_log_files} > /home/seipobi/backup/incremental_backup_$(date +%d_%m_%Y).sql

    #Zip SQL file
    gzip /home/seipobi/backup/incremental_backup_$(date +%d_%m_%Y).sql

fi

#Remove all used binary log files
mysql -E --execute="PURGE BINARY LOGS BEFORE '${current_time}'"

#send backup to cloud
python3 /home/seipobi/Documents/ICAP/NUL_2022-Internship/Automate-HIE-Backups/upload.py

#Clear backups directory
rm /home/seipobi/backup/incremental_backup_*