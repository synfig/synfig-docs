#!/bin/bash
## Convert movie to png sequence
## version 0.1.3 (090403)
## Created by David Rylander, 2009, www.rylanderanimation.se
## Creative Commons Attribution-Share Alike 3.0 licenced (http://creativecommons.org/licenses/by-sa/3.0/)
## Dependencies of this script; FFmpeg

##### Variables #####
mypath="`pwd`"  #get current path.
for filename in "$@"
do
stripped=`echo $filename | sed 's/\..\{3\}$//'`
foldername=`echo $filename | sed 's/\..\{3\}$/-temp-SEQ/'`
if [ ! -d $foldername ]
then
   mkdir $foldername
fi
sleep 1
ffmpeg -i $filename -s 480x270 -f image2 $foldername/$stripped.%4d.png | zenity --progress --pulsate --title="Converting" --text="Converting $filename to png-seq."
cd $foldername
echo -e 'FPS 25\n' > $stripped.lst
ls | sed "/$stripped.lst/d" >> "$stripped".lst

done