mkdir -p ~/Programming/Reference/


pip2 install --upgrade pip setuptools
pip3 install --upgrade pip setuptools
pip2 install powerline-status
pip3 install powerline-status

pip install ImageScraper

wget git.io/antigen-nightly -O ~/antigen.zsh

#git clone git@github.com:herrbischoff/awesome-macos-command-line.git ~/Programming/Reference/awesome-macos-command-line



git clone git://github.com/altercation/solarized.git ~/Programming/UtilitySource/UtilitySource/solarized
#Set font to Hack Regular 18pt
#Back up and install custom terminal & iterm 

#https://raw.githubusercontent.com/zsh-users/antigen/master/bin/antigen.zsh


mkdir -p ~/Programming/UtilitySource
git clone git@github.com:robbyrussell/oh-my-zsh.git ~/Programming/UtilitySource/UtilitySource/oh-my-zsh
~/Programming/UtilitySource/UtilitySource/oh-my-zsh/tools/install.sh
rm -rf ~/Programming/UtilitySource/UtilitySource/oh-my-zsh



# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts