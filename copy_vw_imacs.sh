#!/bin/bash

# This script willcopy the relevant data from the VW imacs

subdomain=dsi.columbia.edu
cd ~/Documents/video_walls

for imac in 01 02 03 04 05 06 07
do

if [ ! -d "vw-$imac" ];
then
	mkdir vw-$imac
fi

   for dir in Documents DOT_ssh
   do
   	rsync -av dsi@dsi-vw-$imac.$subdomain:~/$dir ./vw-$imac
   done

done
