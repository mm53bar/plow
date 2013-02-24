# Bash Deployment #

* Copy `deploy.sh` to `bin/deploy` and mark it as executable
* Create an .env file with your config settings (see below)
* Make sure you have your [ssh-config set up to forward your ssh keys](https://help.github.com/articles/using-ssh-agent-forwarding).

Run `bin/deploy`!

## Config Settings ##

Add these to an .env file:

     # deploy to:
     SERVER=server.com
     APP=app_name
     DEPLOY=/srv/$APP
     ENVIRONMENT=production
     
     # clone source from:
     REPO=ssh://git@github.com/username/repo.git
     BRANCH=master

## Branches ##

If you want to deploy a branch, just call `bin/deploy --rev=branch_name`.

## What's next? ##

This is really just a proof of concept. Extra flags could be added and more functions could be to come. But this proves how easy it is to start.