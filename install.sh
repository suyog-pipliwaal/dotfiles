# Install required pakcages
echo 'Installing required apt packages...'
sudo apt install -y curl git wget vim

# Switch to home dir and copy .vimrc
echo 'Setting vimrc...'
cp vimrc $HOME/.vimrc

# Switch to home dir and copy .eslintrc.json
echo 'Setting eslintrc...'
cp .eslintrc.json $HOME/.eslintrc.json

# Install vundle
echo 'Setting up vundle...'
cd $HOME
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install colorschemes (base-16)
echo 'Installing vim colorschemes...'
cd $HOME
git clone https://github.com/chriskempson/base16-vim.git
mkdir -p $HOME/.vim/colors
mv $HOME/base16-vim/colors/* $HOME/.vim/colors/
rm -rf $HOME/base16-vim

# Install linting modules
echo 'Installing linting helper packages...'
cd $HOME
npm install -g eslint_d
npm install eslint babel-eslint eslint-plugin-react

# Install vundle plugins from vimrc
echo 'Installing vim plugins...'
cd $HOME
vim +PluginInstall +qall
