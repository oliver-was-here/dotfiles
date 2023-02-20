# installation
these instructions are up to date as of OSX Ventura

### table stakes
1. install homebrew
1. configure this repo by:
     1. cloning it to wherever you'd like
     1. copying all files to your home directory
     1. setting the repo to track the home directory `git config core.worktree "/Users/<username>"`

#### vim
1. `$ brew install macvim`
1. `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
1. `$ vim /.vimrc`
1. `$ :PluginInstall`
1. follow the instructions here to complete the YCM installation: https://github.com/ycm-core/YouCompleteMe#macos

#### iTerm/oh-my-zsh
1. note, should already be configured to your liking via .p10k.zsh - however, you can run `p10k configure` to re-tune the display to fit your fickle moods.
1. install powerlevel10k for zsh: https://github.com/romkatv/powerlevel10k#oh-my-zsh
1. `$ brew install zsh-syntax-highlighting`
1. `$ brew install zsh-autosuggestions`
1. configure iTerm
   1. import the iTerm profile found in `/additional-dotfiles/iterm-profile.json` (`Profiles > Open Profiles > Edit Profiles > Other Actions... > Import Json Profiles`)
   1. select the newly imported profile as your iTerm profile
   1. if the above doesn't work, here are some items to jog your memory:
      1. [`Keys > ...`](https://apple.stackexchange.com/a/136931/252775)
      1. `Colors > Presets > .Presets/iTermCustomSolarizedDark.itermcolors`
      1. `Text > Change Font > *.powerline`
      1. script for syncing iTerm with OSX color scheme, https://gist.github.com/doublethefish/c339b659738fdb652e820e3b40f97f36 forked from https://gist.github.com/jamesmacfie/2061023e5365e8b6bfbbc20792ac90f8

#### windows mgmt
1. download hammer spoon `brew install --cask hammerspoon`
1. if for whatever reason the config files in this repo don't work, re-install following this guide: https://github.com/peterklijn/hammerspoon-shiftit
