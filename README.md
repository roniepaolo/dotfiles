# Instructions

The first thing to do in a MacBook Pro is installing homebrew. I recommend follow the steps from the page `https://brew.sh`

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then install git:

```
brew install git
```

And finally replace the native terminal with iterm2:

```
brew install iterm2 --cask
```

### Personalizing iterm2

Some configurations in iterm2 for a better look:
* Go to appearance and choose the Minimal theme
* Go to Profile/Colors, choose Solarized Dark and in Profile/Colors/Background #001b21
* Go to Profiles/Window and change Transparency to 18 and Blur to 35
* Download MesloLG Nerd Font from nerdfonts.com and add it to the Font book
* Go to Profiles/Text and choose the MesloLGM Nerd Font Mono in the Font combobox

### Installing Fish

Now that we have a good-looking terminal, let's install tmux and fish:

```
brew install tmux fish
```

Then change the shell:

```
which fish
chsh -s /opt/homebrew/bin/fish
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
```

### Customizing Fish and Tmux

Git clone my repository:

```
git@github.com:roniepaolo/dotfiles.git
```

And copy the .config directory to the home:

```
cp -r dotfiles/.config/{tmux,fish} .config/
```

Install the fish package manager called Fisher:

```
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
```

Customize the fish shell with Tide:

```
fisher install IlanCosman/tide@v5
```

Install the tmux plugin manager and the plugins:

```
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
tmux
ctrl + a + I (this is for installing the plugins)
```

### VSCode Extensions
- Atom One Dark Them by Mahmoud Ali
- ESLint by Microsoft
- GitLens - Git supercharged by GitKraken
- Jupyter
- Material Icon Them by Philipp Kief
- NERDTree by Llam4u
- Prettier - Code Formatter
- Python by Microsoft
- Ruff by Astral Software
- Vim by vscodevim
- Docker by Microsoft
- Dev Containers by Microsoft
- Error Lens by Alexander
- Auto Close Tag by Jun Han
