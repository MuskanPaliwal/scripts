#!/bin/sh

walldir=~/.autowall
curval=$(cat ${walldir}/cur)
no_of_wallpapers=$(ls $walldir/wallpapers | wc -l)
let "curval++"
let "curval%=$no_of_wallpapers"
file=${walldir}/wallpapers/${curval}.jpg

if [[ ! -f $file ]];then
	echo "changed curval to 1"
	let "curval=1"
	file=${walldir}/wallpapers/${curval}.jpg
fi

feh --bg-scale $file

if [ $? -eq 0 ];then
  echo "Successfully changed wallpaper"
else
  echo "Could not change wallpaper"
fi

echo "run: feh --bg-scale $file"
echo $curval > $walldir/cur
echo $(date)
