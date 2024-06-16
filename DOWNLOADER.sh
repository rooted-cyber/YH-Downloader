ban() {
echo -e "\033[1;92m"

toilet -f font DOWNLOAD
printf "\n\t\033[10m [::]\033[1;93m Youtube/Hotstar video and audio download\033[0m [::]\n"
}
ytv() {
echo -e -n  "\033[1;92m Enter Youtube/Hotstar link : "
read ya
if [ $ya ];then
cd /sdcard
yt-dlp $ya
fi
} 
yta() {
echo -e -n  "\033[1;92m Enter Youtube/Hotstar link : "
read yv
if [ $yv ];then
cd /sdcard
yt-dlp -x $yv
fi
} 
ot() {
echo -e -n  "\033[1;92m Enter any link : "
read ot
if [ $ot ];then
cd /sdcard
yt-dlp $ot
fi
} 

menu() {
ban
printf "\n\033[1;92m[\033[0m1\033[1;92m]\033[1;93m Youtube/Hotstar Video"
printf "\n\033[1;92m[\033[0m2\033[1;92m]\033[1;93m Youtube/Hotstar audio"
printf "\n\033[1;92m[\033[0m3\033[1;92m]\033[1;93m Try to download other link"
printf "\n\033[1;92m[\033[0m4\033[1;92m]\033[1;93m Exit\n\n\n"
echo -e -n "Enter option : "
read b
case $b in
1)ytv ;;
2)yta ;;
3)ot ;;
4)exit ;;
*)menu ;;
esac
}
menu
