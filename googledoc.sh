#!/bin/bash
if [ $# -ne 1 ]
then
  echo "Usage: `basename $0` password"
  exit
fi

date '+%Y-%m-%d %H:%M:%S' > ~/backup/googledoc/.backup
./gdatacopier/gcp.py -uo -p$1 nskoric@gmail.com:/all/Privatno ~/backup/googledoc/Privatno
./gdatacopier/gcp.py -uo -p$1 nskoric@gmail.com:/all/Referendumi ~/backup/googledoc/Privatno/Referendumi
./gdatacopier/gcp.py -uo -p$1 nskoric@gmail.com:/all/Nisam_vjernik ~/backup/googledoc/Nisam_vjernik
