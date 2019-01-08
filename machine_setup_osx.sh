#!/bin/bash
# Stuff that this doesn't do:
# Ruby setup with rbenv: https://gorails.com/setup/ubuntu/14.04
# R's devtools mess
# OpenVPN
# Revolution R's optimized R distro
# Put this line in .profile for RRO:
# export RSTUDIO_WHICH_R=/usr/lib64/RRO-8.0/R-3.1.1/bin/R

echo "Installing packages"
# I need to stop acting like a neckbeard and move this all to a brewfile

# command line tools
brew install bfg cmake curl hub tmux the_silver_searcher tree wget zlib
brew install gnu-sed --with-default-names

# creature comforts
brew cask install alfred flux sonos spectacle

# Python stuff
brew install pipenv pyenv

# R stuff. I use RRO so there is no R install here. May need to do that first since rstudio looks for R at /usr/bin/R and may hork if it's not there
brew cask install rstudio

# Ruby
brew install ruby-build rbenv

# Other languages
brew install hg go scala # Go uses mercurial, not 100% sure hg is necessary but whatevs
brew cask install java julia

# SQL/DBs
# mysql-server mysql-common mysql-client postgresql-9.4 postgresql-contrib-9.4 postgresql-server-dev-9.4 pgadmin3
brew install mongo mysql-client mysqlworkbench postgresql robo-3t
brew cask install dbeaver-community

# Editors and such
brew cask install atom basictex textwrangler visual-studio-code

# Plumbing
brew cask install openconnect-gui ssh-tunnel-manager tunnelblick

# Random
brew install docker hadoop maven
brew cask install arduino paintbrush qgis
brew cask install google-drive-file-stream slack tableau

# Cleanup
brew update && brew upgrade brew-cask && brew cleanup

echo "Finished installing applications"

echo "Manually downloading some vim stuff"

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle
git clone git://github.com/croaky/vim-colors-github.git ~/.vim/bundle

exit 0
