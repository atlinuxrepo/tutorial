#!/bin/bash

# This script willcopy the relevant data from the VW imacs

# SUBDOMAIN is a var you define yourself.

cd ~/Documents/video_walls

for imac in {01..07} 
do

if [ ! -d "vw-$imac" ];
then
	mkdir vw-$imac
fi

   for dir in Documents DOT_ssh
   do
   	rsync -av dsi@dsi-vw-$imac.$SUBDOMAIN:~/$dir ./vw-$imac
   done

done
