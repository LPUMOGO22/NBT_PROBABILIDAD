#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <archivo>"
    exit 1
fi

file=$1


echo "$file"

comienzo=$(cat "$file" | awk '{print NR $0}' | grep -E '<ol>|</ol>' | awk -F '<' '{print $1}' | tail -n2 | head -n1)
fin=$(cat "$file" | awk '{print NR $0}' | grep -E '<ol>|</ol>' | awk -F '<' '{print $1}' | tail -n1)

#echo "$comienzo"
#echo "$fin"


cat "$file" | awk "NR>=$comienzo && NR<=$fin{print \$0}" | grep "<a class=\"songLabel\"" | awk -F '>' '{print $2}' | awk -F '<' '{print $1}' >> db.txt


