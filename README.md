# 🛠️ Kingsleycj's Dotfiles

Welcome to my personal development setup! This repo contains configuration files for my shell environment (Zsh), Git, aliases, and more. It’s designed to quickly bootstrap my preferred environment on any machine, especially using **WSL + Oh My Zsh + Powerlevel10k**.

---

## 📁 Structure

dotfiles/
├── .zshrc # Zsh configuration
├── .gitconfig # Git user settings
├── .aliases # Custom shell aliases
├── .p10k.zsh # Powerlevel10k theme config
├── setup.sh # Setup script to symlink everything
└── README.md # You're here!


---

## 🚀 Quick Setup

Clone this repo into your `$HOME` directory in WSL (NOT inside Windows mount like `/mnt/c/...`):

```bash
cd ~
git clone https://github.com/kingsleycj/dotfiles.git
cd dotfiles
```

Then run the setup:

```bash
chmod +x setup.sh
./setup.sh
```

This will:

- Back up your existing .zshrc and .gitconfig
- Symlink dotfiles to your home directory
- Reload the Zsh shell


## ⚙️ Manual Install Requirements
These must be installed before setup:

1. Oh My Zsh

```bash 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

2. Powerlevel10k Theme
- Install with:
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```
- Find and Set theme in .zshrc:
```bash 
ZSH_THEME="powerlevel10k/powerlevel10k"
```
3. zsh-syntax-highlighting
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```
4. zsh-autosuggestions
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions \
~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
```
Update your .zshrc plugins list:
```bash
 plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```

## 🔒 SSH Setup Notes (for GitHub Push)
If you recently set up your system or reinstalled your OS, make sure to:

```bash 
ssh-keygen -t ed25519 -C "you@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```
Then copy your public key and add it to GitHub:
```bash
cat ~/.ssh/id_ed25519.pub
```
## 🧪 Test Your Setup
Run these to verify:
```bash
zsh --version
git config --list
echo $ZSH_THEME
```

Also test pushing to GitHub:
```bash 
git clone git@github.com:kingsleycj/dotfiles.git
```
## 🧹 Updating Dotfiles
If you edit your .zshrc, .aliases, or .gitconfig, make changes in the dotfiles folder and restart the terminal (or source ~/.zshrc) to apply them.

## 📌 Bonus Tools You Might Want
- fzf – command-line fuzzy finder

- bat – prettier cat

- ripgrep – faster grep

- starship – alternative prompt to p10k

## 🧰 Resources
- Zsh: https://zsh.sourceforge.io/

- Oh My Zsh: https://ohmyz.sh/

- Powerlevel10k: https://github.com/romkatv/powerlevel10k

- GitHub SSH Setup: https://docs.github.com/en/authentication/connecting-to-github-with-ssh

- Dotfiles inspiration: https://dotfiles.github.io/

## 🤝 Contributing
These dotfiles are personalized for kingsleycj's workflow, but feel free to fork and tweak them for your own use!

## 🧼 License
MIT — free to use, modify, and distribute.
