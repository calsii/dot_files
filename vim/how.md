```bash
# install rg pip3 nvim vim npm eslint xsel

PWD="$(pwd)"

echo "source $PWD/vim/SCRIPT" >> ~/.zshrc
rm -rf ~/.vim*
ln -s "$PWD/vim/vim" ~/.vim
ln -s "$PWD/vim/nvim" ~/.config/nvim
ln -s "$PWD/vim/vimrc" ~/.vimrc
ln -s "$PWD/vim/ideavim.vim" ~/.ideavimrc

pip3 install --user --upgrade neovim
pip3 install --user --upgrade neovim-remote

$VIMCONFIG/pack/minpac/start/fzf/install --bin
```
