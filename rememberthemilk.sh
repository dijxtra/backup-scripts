#!/bin/bash

if [ $# -ne 1 ]
then
  echo "Usage: `basename $0` password"
  exit
fi

wget -q --http-user="nskoric" --http-password="$1" https://www.rememberthemilk.com/icalendar/nskoric/ -O ~/backup/rememberthemilk.`date '+%Y-%m-%d'`.ics
