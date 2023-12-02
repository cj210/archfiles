sudo pacman -Syyu
sudo pacman -S fish neofetch eza 
chsh -s $(which fish)
echo 'cd /usr/share/consolefonts/
setfont LatGrkCyr-12x33.psfu.gz
cd
neofetch' >> ~/.config/fish/config.fish
alias -s "lsa=eza -abFghHlimM --icons --group-directories-first --git --git-repos"
alias -s "lst=eza -abFghHlimMT --icons --group-directories-first --git --git-repos"
alias -s "lsg=eza -abFghHlimM --icons --group-directories-first --git --git-repos --git-ignore"
alias -s "back=cd $OLDPWD"
reboot
