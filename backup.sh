#!/usr/bin/env bash

###############################################################################
# Backup old machine's key items                                              #
###############################################################################

mkdir -p ~/migration/home/
mkdir -p ~/migration/Library/"Application Support"/
mkdir -p ~/migration/Library/Preferences/
mkdir -p ~/migration/Library/Application Support/
mkdir -p ~/migration/rootLibrary/Preferences/SystemConfiguration/

cd ~/migration

# what is worth reinstalling?
brew leaves              > brew-list.txt    # all top-level brew installs
brew cask list           > cask-list.txt

# then compare brew-list to what's in `brew.sh`
comm <(sort brew-list.txt) <(sort brew.sh-cleaned-up)

# backup some dotfiles likely not under source control
cp -Rp \
    ~/.bash_history \
    ~/.extra ~/.extra.fish \
    ~/.gitconfig.local \
    ~/.gnupg \
    ~/.nano \
    ~/.nanorc \
    ~/.netrc \
    ~/.ssh \
    ~/.z   \
        ~/migration/home

cp -Rp ~/Documents ~/migration

cp -Rp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration/rootLibrary/Preferences/SystemConfiguration/ # wifi

cp -Rp ~/Library/Services ~/migration/Library/ # automator stuff
cp -Rp ~/Library/Fonts ~/migration/Library/ # all those fonts you've installed

