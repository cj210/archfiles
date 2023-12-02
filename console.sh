sudo pacman -Syyu
sudo pacman -S fish neofetch eza 
chsh -s $(which fish)
cat <<EOT >>  ~/.config/fish/config.fish
cd /usr/share/consolefonts/
setfont LatGrkCyr-12x33.psfu.gz
cd
neofetch
EOT
cat <<EOT >> ~/archfiles/c2
alias -s "lsa=eza -abFghHlimM --icons --group-directories-first --git --git-repos"
alias -s "lst=eza -abFghHlimMT --icons --group-directories-first --git --git-repos"
alias -s "lsg=eza -abFghHlimM --icons --group-directories-first --git --git-repos --git-ignore"
alias -s "back=cd $OLDPWD"
echo "All done -- Please reboot
EOT
echo "Sourcing complete -- Please source c2 in the archfiles folder"
fish

