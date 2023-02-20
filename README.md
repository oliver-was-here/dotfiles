### Oliver's fun-zone installation guide
Install homebrew ya dingus

#### Vim
1. `$ brew install macvim`
1. `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
1. `$ vim /.vimrc`
1. `$ :PluginInstall`
1. `$ cd ~/.vim/bundle/youcompleteme`

#### iTerm/oh-my-zsh
1. install powerlevel10k for zsh: https://github.com/romkatv/powerlevel10k#oh-my-zsh
1. `$ brew install zsh-syntax-highlighting`
1. `$ brew install zsh-autosuggestions`
1. configure iTerm:
   1. `System Preferences > Profiles >`
      1. [`Keys > ...`](https://apple.stackexchange.com/a/136931/252775)
      1. `Colors > Presets > .Presets/iTermCustomSolarizedDark.itermcolors`
      1. `Text > Change Font > *.powerline`

#### windows managemetn
1. download hammer spoon `brew install --cask hammerspoon`
2. download spoon for ShiftIt like window management: https://github.com/peterklijn/hammerspoon-shiftit
