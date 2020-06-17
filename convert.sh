#!/bin/bash
read -p 'folder name: ' folder_name
read -p 'scale: %(only number))" ' scale

#scale = "$scale\%"

mkdir -p $scale/$folder_name

for file in ./$folder_name/*; do
	echo $file
	echo "$scale%"
	convert $file -scale "$scale%" "$scale/$file"
done

echo $folder_name $scale
#convert tag.png -scale 5000% tag3.png
