#color
r='\e[1;31m'
g='\e[1;32m'
y='\e[1;33m'
b='\e[1;34m'
p='\e[1;35m'
lb='\e[1;36m'




echo

echo -e $g "█████╗    ██████╗"
echo -e $g "██╔══██╗██╔════╝"
echo -e $g "██║    ╚═╝██║     ██╗"
echo -e $g "██║    ██╗██║    ╚██╗"
echo -e $g "╚█████╔╝╚██████╔╝"
echo -e $g "  ╚════╝    ╚═════╝"

echo -e $g "██████╗    █████╗  ███╗    ██╗███╗    ██╗███████╗██████╗"
echo -e $g "██╔══██╗██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔═██╗"
echo -e $g "██████╦╝███████║██╔██╗██║██╔██╗██║█████╗    ██████╔╝"
echo -e $g "██╔══██╗██╔══██║██║╚████║██║╚████║██╔══╝    ██╔══██╗"
echo -e $g "██████╦╝██║    ██║██   ╚███║ ██║  ╚███║███████╗██║     ██║"
echo -e $g "╚═════╝ ╚═╝   ╚═╝╚═╝   ╚══╝╚═╝    ╚══╝╚══════╝╚═╝     ╚═╝"
echo -e $r "                                                TOOL BY CYBER JAINDU"
echo -e $b "WHAT IS YOUR BANNER NAME ? : \c"
read Bname
echo 
echo -e $b "WHAT IS YOUR NAME ? : \c"
read name

echo "cowsay -f eyes "$name" | lolcat " > name.txt
echo "figlet "$Bname" | lolcat " > Bname.txt
echo "clear" > clear.txt
echo "PS1='\$ ' " > Temp.txt


#remove old files
rm -rf /data/data/com.termux/files/usr/etc/zshrc
rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc

#inject files to zshrc
cat "clear.txt" >> /data/data/com.termux/files/usr/etc/zshrc
cat "name.txt" >> /data/data/com.termux/files/usr/etc/zshrc
cat "Bname.txt" >> /data/data/com.termux/files/usr/etc/zshrc
cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/zshrc

#inject files to bash.bashrc
cat "clear.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "name.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "Bname.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc

rm -rf name.txt Bname.txt clear.txt Temp.txt
echo
figlet FINISH | lolcat
echo "PLEASE RESTART YOUR TERMUX"