
wget nvim # install latest
tar -xvf nvim.tar.gz
sudo cp -ir nvim-linux64/lib/* /usr/local/lib
sudo cp -ir nvim-linux64/bin/* /usr/local/bin
sudo cp -ir nvim-linux64/share/* /usr/local/share
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone https://github.com/rishin27/neovim-setup nvim
