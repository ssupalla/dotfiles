#!/bin/bash
# Stuff that this doesn't do:
# Git and xclip, as well as github key setup
# Anaconda (wget the current Python 3.x .sh, something like http://repo.continuum.io/anaconda3/Anaconda3-2.1.0-Linux-x86_64.sh, and run it)
# Then export PATH=~/anaconda3/bin:$PATH
# Ruby setup with rbenv: https://gorails.com/setup/ubuntu/14.04
# R's devtools mess
# OpenVPN
# Revolution R's optimized R distro
# Put this line in .profile for RRO:
# export RSTUDIO_WHICH_R=/usr/lib64/RRO-8.0/R-3.1.1/bin/R

echo "Manually downloading some installers"

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle

echo "Installing packages"
# I need to stop acting like a neckbeard and move this all to a brewfile

brew install brew-cask
brew tap caskroom/cask

# command line tools
brew install curl tmux wget 

# creature comforts
brew cask install flux sonos

# Python (needs work)
# brew cask install python-bs4 python-software-properties

# R
brew cask install r rstudio

# Ruby (needs work)
brew install ruby-build # rbenv ruby-dev

# Other languages
brew install hg go # Go uses mercurial, not 100% sure hg is necessary but whatevs
brew cask install julia

# SQL/DBsi
# mysql-server mysql-common mysql-client postgresql-9.4 postgresql-contrib-9.4 postgresql-server-dev-9.4 pgadmin3 
brew install postgresqli # this is kind of busted

# All the libs
# libapparmor1 libatlas-dev libcurl4-openssl-dev libffi-dev libfreetype6 libfreetype6-dev libhdf5-7 libhdf5-dev libjpeg62 liblapack-dev libmysqlclient-dev libpng12-dev libpq-dev libreadline-dev libsqlite3-dev libssl-dev libxml2-dev libxslt1-dev libyaml-dev zlib1g-dev

# Random
brew install docker 
brew cask install qgis tableau slack

# Cleanup
brew update && brew upgrade brew-cask && brew cleanup

echo "Finished adding PPAs and installing applications"
exit 0