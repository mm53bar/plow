#!/bin/sh
#                ,--,
#  ,-.----.   ,---.'|       ,----..
#  \    /  \  |   | :      /   /   \             .---.
#  |   :    \ :   : |     /   .     :           /. ./|
#  |   |  .\ :|   ' :    .   /   ;.  \      .--'.  ' ;
#  .   :  |: |;   ; '   .   ;   /  ` ;     /__./ \ : |
#  |   |   \ :'   | |__ ;   |  ; \ ; | .--'.  '   \' .
#  |   : .   /|   | :.'||   :  | ; | '/___/ \ |    ' '
#  ;   | |`-' '   :    ;.   |  ' ' ' :;   \  \;      :
#  |   | ;    |   |  ./ '   ;  \; /  | \   ;  `      |
#  :   ' |    ;   : ;    \   \  ',  /   .   \    .\  ;
#  :   : :    |   ,/      ;   :    /     \   \   ' \ |
#  |   | :    '---'        \   \ .'       :   '  |--"
#  `---'.|                  `---`          \   \ ;
#    `---`                                  '---"
#
#
#     This is the installation script for Plow.
#     See the source: https://github.com/mm53bar/plow/
#
#     Install Plow by running this command:
#     curl https://raw.github.com/mm53bar/plow/recipes/install.sh | sh

# Set up the environment

      set -e

# Create the bin folder if it doesn't already exist

      mkdir -p bin

# Download the plow scripts

      curl -s -L https://raw.github.com/mm53bar/plow/master/bin/plow -o bin/plow
      
# Downoad support files

      curl -s -L https://raw.github.com/mm53bar/plow/master/Plowfile -o Plowfile
      curl -s -L https://raw.github.com/mm53bar/plow/master/.env.sample -o .env.sample

# Set the permissions for the scripts

      chmod +x bin/plow

# All done

      echo 'Installed!'
      echo      
      echo 'Be sure to update .env.sample. Then copy it to .env.production'
