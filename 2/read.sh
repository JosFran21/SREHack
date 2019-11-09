#!/bin/bash
if [ "$#" -ne 2 ]
then
  echo "Error en parámetros recibidos"
  exit 1
fi
file="$1"
dominio="$2"
chars=abcdefghijklmnopqrstuvwxyz0123456789
touch "output.txt"

while IFS="" read -r line || [ -n "$line" ]
do
    name=$(echo $line | cut -f1 -d,)
    last=$(echo $line | cut -f2 -d,)
    firstchar=${name:0:1}

    echo -n "${firstchar,,}${last,,}" >> output.txt
    for i in {1..3} ; do
        echo -n "${chars:RANDOM%${#chars}:1}" >>output.txt
    done
    echo -n "@" >> output.txt
    echo -n "${dominio,,}" >>output.txt
    echo >>output.txt
done <"$file"