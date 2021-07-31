#!/bin/bash
TMP_IFS=IFS
IFS='
'

for file in `ls *.flv`; do ffmpeg -i "$file" -c copy $(basename "$file" .flv).mp4; done
IFS=TMP_IFS
