#!/usr/bin/env bash

# Fira code
if ! brew cask list -1 | grep -q "^$(echo 'font-fira-code' | cut -d' ' -f1)\$"; then

    brew tap caskroom/fonts
    brew cask install font-fira-code

fi

# iTerm2
if ! brew cask list -1 | grep -q "^$(echo 'iterm2' | cut -d' ' -f1)\$"; then

    brew cask install iterm2

fi

# sudolikeaboss (for iTerm)
if ! brew list -1 | grep -q "^$(echo 'sudolikeaboss' | cut -d' ' -f1)\$"; then

    brew tap ravenac95/sudolikeaboss
    brew install sudolikeaboss

fi

# Querious
if ! brew cask list -1 | grep -q "^$(echo 'querious' | cut -d' ' -f1)\$"; then

    brew cask install querious

fi