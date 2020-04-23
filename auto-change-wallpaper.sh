#!/bin/bash

while :
do
    IMAGES=/home/maha/Pictures/Backgrounds/NASA/1920x1080/*
    for image in $IMAGES
    do
        gsettings set org.gnome.desktop.background picture-uri  $image
        sleep 2m
    done 
done
