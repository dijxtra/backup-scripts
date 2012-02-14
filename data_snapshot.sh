#!/bin/bash

date '+%Y-%m-%d %H:%M:%S' > ~/.backup
rsync -azvv --delete /media/data/home/ /media/ELEMENTS_1/rsync_backup/ > sync.log
