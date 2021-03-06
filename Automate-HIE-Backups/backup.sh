#! /usr/bin/bash

dow=$(date +%u)
echo "${dow}"

current_time=$(date +%Y-%m-%d" "%H:%M:%S)

#create backup folder if non-existent
if [ ! -d "/home/mojau_p/backup" ]
then        
    echo "creating backup directory..."
    mkdir /home/mojau_p/backup
        
fi

if [ ! -d "/home/mojau_p/backup/binary-log-files" ]
then        
    echo "creating backup directory..."
    mkdir /home/mojau_p/backup/binary-log-files

fi


#enable mysql to start writing to new binary log file
docker exec bahmni_docker_emr-service_1  /usr/bin/mysqladmin -uroot -pP@ssw0rd flush-logs

#take an ascending order list of all bianry log files except the last
bin_log_files=$(docker exec bahmni_docker_emr-service_1  /usr/bin/ls -tr /var/lib/mysql/ | egrep "mysql-bin." | head -n -2)

#array to store home binary logs directories
declare -a local_bin_logs=()

for bin_log in $bin_log_files
  do
     local_bin_logs+=("/home/mojau_p/backup/binary-log-files/$bin_log")
     
     docker cp a6ad222c3853:/var/lib/mysql/"$bin_log" /home/mojau_p/backup/binary-log-files/
 done


if [ $dow == 2 ]
then #take take full backup
        
    docker exec bahmni_docker_emr-service_1  /usr/bin/mysqldump -uroot -pP@ssw0rd openmrs > /home/mojau_p/backup/full_backup_$(date +%d_%m_%Y).sql
    
    gzip /home/mojau_p/backup/full_backup_$(date +%d_%m_%Y).sql

else #take incremental backup

    echo "==============Local bin logs=================="
    echo ${local_bin_logs[@]}

    #Copy SQL of all binary files in .sql file 
    mysqlbinlog ${local_bin_logs[@]} > /home/mojau_p/backup/incremental_backup_$(date +%d_%m_%Y).sql

    rm -r /home/mojau_p/backup/binary-log-files

    #Zip SQL file
    gzip /home/mojau_p/backup/incremental_backup_$(date +%d_%m_%Y).sql

fi

#Remove all used binary log files
current_bin_log=$(sudo docker exec bahmni_docker_emr-service_1  /usr/bin/ls -tr /var/lib/mysql/ | egrep 'mysql-bin.' | tail -n -1)

docker exec bahmni_docker_emr-service_1  /usr/bin/mysql -uroot -pP@ssw0rd -E --execute="PURGE BINARY LOGS TO '${current_bin_log}'"

#send backup to cloud
python3 /home/mojau_p/backups1/upload.py

#Clear backups directory
#rm /home/mojau_p/backup/incremental_backup_*
