sudo apt install -y vim
sudo apt install -y i3 i3-wm i3blocks i3lock i3status
sudo apt install -y rofi
sudo apt install -y git
sudo apt install -y feh
sudo apt install -y curl

WORKDIR=$(pwd)
mkdir ~/build

# install zsh
sudo apt-get -y install zsh
cd ~/build
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh install.sh
sudo apt-get install fonts-powerline
fc-cache -vf ~/.fonts/

# install autojump
cd ~/build
git clone https://github.com/wting/autojump.git
cd autojump
./install.py
echo "[[ -s /home/$(whoami)/.autojump/etc/profile.d/autojump.sh ]] && source /home/$(whoami)/.autojump/etc/profile.d/autojump.sh
" >> ~/.bashrc

cd $WORKDIR
# copy the config files
sudo cp i3_config ~/.config/i3/config
sudo cp i3blocks.conf /etc/i3blocks.conf
sudo cp zshrc ~/.zshrc 
