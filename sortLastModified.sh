#!/bin/bash

var=$(ls -tr);
i=0;
printf %s "$var" | while IFS= read -r line;
do
	mv "$line" "$i.$line";
	i=$((i+1));
done

