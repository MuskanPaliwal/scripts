Insert the following line in your cronjob to change wallpapers every minute:

`* * * * * DISPLAY=:0 /bin/bash ~/.autowall/script.sh > ~/.autowall/log.txt`

