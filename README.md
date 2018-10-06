### Oliver's fun-zone installation guide
Install homebrew ya dingus

#### Vim
1. `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
1. `$ vim /.vimrc`
1. `$ :PluginInstall`
1. `$ brew install cmake`
1. `$ cd ~/.vim/bundle/youcompleteme`

#### iTerm/oh-my-zsh
1. `$ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
1. fonts:
   1. `$ git clone git clone https://github.com/powerline/fonts.git --depth=1`
   1. `$ cd fonts`
   1. `$ cd ..`
   1. `./install.sh`
   1. `$ rm -rf fonts`
1. `$ brew install zsh-syntax-highlighting`
1. `$ brew install zsh-autosuggestions`
1. configure iTerm:
   1. `System Preferences > Profiles >`
      1. `Colors > Presets > .Presets/iTermCustomSolarizedDark.itermcolors`
      1. `Text > Change Font > *.powerline`
