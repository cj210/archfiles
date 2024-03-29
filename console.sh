sudo pacman -Syyu
sudo pacman -S fish neofetch eza lynx
chsh -s $(which fish)
touch ~/archfiles/c2
chmod 755 ~/archfiles/c2
cat <<EOT >> ~/archfiles/c2
alias -s "lsa=eza -abFghHlimM --icons --group-directories-first --git --git-repos"
alias -s "lst=eza -abFghHlimMT --icons --group-directories-first --git --git-repos"
alias -s "lsg=eza -abFghHlimM --icons --group-directories-first --git --git-repos --git-ignore"
alias -s "back=cd $OLDPWD"
echo >>~/.config/fish/config.fish "\
cd /usr/share/kbd/consolefonts/
setfont LatGrkCyr-12x22.psfu.gz
cd
neofetch"
rm ~/archfiles/c2
echo "All done -- Please reboot"
EOT
echo "Sourcing complete -- Please source c2 in the archfiles folder"
fish


