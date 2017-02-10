#!/bin/bash

# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Productivity
brew cask install spectacle
brew cask install dropbox
brew cask install lastpass
brew cask install caffeine
brew cask install onyx
brew cask install macdown
brew cask install slack

# Dev
brew cask install atom
brew cask install robomongo
brew cask install sequel-pro
