#!/usr/bin/env bash


e-mail="$1"

cd ~/Documents
#mkdir Projects

echo "Will now setup your mac - master"
cd ~/Documents/Projects/Setup/config
sh .test

###############################################################################
# Xcode Command Line Tools                                                    #
###############################################################################
if ! xcode-select --print-path &> /dev/null; then

    # Prompt user to install the XCode Command Line Tools
    xcode-select --install &> /dev/null

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Wait until the Xcode Command Line Tools are installed
    until xcode-select --print-path &> /dev/null; do
        sleep 5
    done

    print_result $? 'Install Xcode Command Line Tools'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Point the `xcode-select` developer directory to
    # the appropriate directory from within `Xcode.app`
    # https://github.com/alrra/dotfiles/issues/13

    sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
    print_result $? 'Make "xcode-select" developer directory point to Xcode'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Prompt user to agree to the terms of the Xcode license
    # https://github.com/alrra/dotfiles/issues/10

    sudo xcodebuild -license
    print_result $? 'Agree with the XCode Command Line Tools licence'

fi

###############################################################################
# homebrew & oh-my-zsh                                                        #
###############################################################################


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
./brew.sh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

###############################################################################
# GIT                                                                         #
###############################################################################

# speed up git status (to run only in chromium repo)
git config status.showuntrackedfiles no
git update-index --untracked-cache

git config user.email e-mail

###############################################################################
# Remaining configuration.                                                    #
###############################################################################

#sh .macos
#sh .aliases
#sh .bash_profile
#sh .bash_prompt
#sh .functions