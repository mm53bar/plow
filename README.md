# Bash Deployment #

Install with the following command:

     curl https://github.com/mm53bar/plow/blob/master/install.sh | sh

Run `bin/deploy` and relax!

## Config Settings ##

Copy the settings from .env.sample to your own .env file.

## Branches ##

If you want to deploy a branch, just call `bin/deploy --rev=branch_name`.

## Troubleshooting ##

Make sure you have your [ssh-config set up to forward your ssh keys](https://help.github.com/articles/using-ssh-agent-forwarding).

## What's next? ##

This is really just a proof of concept. Extra flags could be added and more functions could be to come. But this proves how easy it is to start.
