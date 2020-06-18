#!/bin/bash
read -p 'folder name: ' folder_name
read -p 'width: px (please input only number) ' width
read -p 'height: px (please input only number) ' height

# initialize 
scale=100
# minimum size of pixel of markers
minimumImg=5

if [ $width -gt $height ]
then
	scale=$((width/minimumImg))
else 
	scale=$((height/minimumImg))
fi

# convert to percent

scale=$((scale*100))


mkdir -p $width\x$height/$folder_name

for file in ./$folder_name/tag*.png; do
	convert $file -scale "$scale%" -resize $width\x$height! $width\x$height/$file
	echo  $file
done

