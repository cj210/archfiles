sudo pacman -Syyu
sudo pacman -S fish neofetch eza 
chsh -s $(which fish)
touch ~/archfiles/c2
chmod 755 ~/archfiles/c2
ls -lah ~/.config/fish
cat ~/.config/fish/config.fish
cat <<ETT >>  ~/.config/fish/config.fish
cd /usr/share/kbd/consolefonts/
setfont LatGrkCyr-12x33.psfu.gz
cd
neofetch
ETT
cat <<EOT >> ~/archfiles/c2
alias -s "lsa=eza -abFghHlimM --icons --group-directories-first --git --git-repos"
alias -s "lst=eza -abFghHlimMT --icons --group-directories-first --git --git-repos"
alias -s "lsg=eza -abFghHlimM --icons --group-directories-first --git --git-repos --git-ignore"
alias -s "back=cd $OLDPWD"
rm ~/archfiles/c2
exit
echo "All done -- Please reboot"
EOT
echo "Sourcing complete -- Please source c2 in the archfiles folder"
fish

