#!/bin/bash
hrn_array=(
    1
    2
    3
)
#echo ${hrn_array[@]}
for i in "${hrn_array[@]}"; 
do 
    echo "$i"; 
    curl -I  -H "Authorization: Bearer <bearer-token>" --request DELETE <endpoint-url>/$i
    sleep 1
done