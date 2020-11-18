#/bin/bash

server_name=$(uname -n)
ip_address=$(ifconfig | grep inet | awk 'NR==1{print $2}')
os_type=$(uname)
up_time=$(uptime | awk '{print $3}')

#Creating header in csv

echo "S_No,server_name,ip_address,os_type,up_time" > server_info.csv
echo "1,$server_name,$ip_address,$os_type,$up_time" >> server_info.csv


