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
#     curl https://raw.github.com/mm53bar/plow/master/install.sh | sh

# Set up the environment

      set -e

# Create the bin folder if it doesn't already exist

      mkdir -p bin

# Download the plow scripts

      curl -s -L https://raw.github.com/mm53bar/plow/master/bin/deploy -o bin/deploy
      curl -s -L https://raw.github.com/mm53bar/plow/master/bin/migrate -o bin/migrate
      curl -s -L https://raw.github.com/mm53bar/plow/master/bin/migrate -o bin/start
      curl -s -L https://raw.github.com/mm53bar/plow/master/bin/migrate -o bin/stop
      curl -s -L https://raw.github.com/mm53bar/plow/master/bin/migrate -o bin/status
      curl -s -L https://raw.github.com/mm53bar/plow/master/.env.sample -o .env.sample

# Set the permissions for the scripts

      chmod +x bin/deploy
      chmod +x bin/migrate
      chmod +x bin/start
      chmod +x bin/stop
      chmod +x bin/status

# All done

      echo 'Installed!'
      echo      
      echo 'Be sure to update .env.sample. Then copy it to .env.'
