#!/bin/bash
# ~/jobs/scrape.sh

list=( 	acidhouse
	ambientmusic
	astateoftrance
	atmosphericdnb
	bigbeat
	chillmusic
	chillout
	deephouse
	dnb
	dubstep
	edm
	electro
	electrohouse
	electronicdancemusic
	electronicmagic
	futurefunkairlines
	futuresynth
	house
	liquiddnb
	liquiddubstep
	psybient
	psybreaks
	psytrance
	techno
	trance
	tranceandbass )

cd /root/Downloads/rsdc
for i in ${list[@]};
	do
		echo 'data'
		echo "### Scraping /r/"$i
		/root/music-scraper/rsdc.py $i
		echo "### Moving new files --> /mnt/music/Web Rips"
		cp -Ru * /mnt/music/Web\ Rips
		echo "Cleaning working directory before next scrape"
		rm -rf /root/Downloads/rsdc/*
	done

