#! /bin/bash

#Coded By Akash Giri

green='\e[32m'
yellow='\e[33m'
magneto='\e[36m'
reset='\e[0m'

function banner(){

 echo -e "\n$green"
 echo "
       	       ╔────────────────────────────────────────────────╗
       	       |    Video To Audio Convertor Version - 1.0.1             |
       	       |          Developed By :- Akash Giri                     |
       	       ┖────────────────────────────────────────────────┙
 "
 figlet -c -k -f small Video2Audio|lolcat 
 figlet -c -k -f small Convertor|lolcat
 echo
}

function ext(){
 i=1
 echo
 for f in *.mp4; do
  echo -e  "$magneto [$i].$yellow $f $reset"
  (( i++ )); done
 echo
}

banner
echo -e "$magneto \nEnter the directory [ After Home Directory ] : $green\c"
read dir
echo -e "$yellow \nChanging directory...$reset"
sleep 1
target=~/$dir; cd $target
ext

echo -e "$magneto \nEnter File Name : $green \c"
read fn
dir=$target/$fn
echo
echo -e "$yellow \nCoverting...$magneto\n"
sleep 1

ffmpeg -i $dir -c:a libmp3lame $target/$fn.mp3
echo -e "\nSuceessfully Converted... :)$reset\n"
figlet -c -k -f small Thank You|lolcat
