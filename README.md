# Bash Deployment with Plow#

Capistrano is a great tool but hard to customize or extend. There isn't good documentation and the code is somewhat hard to read.

So I decided to see what I could do if I just whipped up a few simple bash scripts that would do the deployment for me.

The idea here is that you take plow and customize it to your liking. I use bluepill to manage my unicorns. Don't use bluepill? Fine by me! Fork the repo and update `bin/deploy` to restart unicorn directly. You're only going to have to change [one line of code](https://github.com/mm53bar/plow/blob/master/bin/deploy#L32).

## Usage ##

`cd` to your project directory. Install plow with the following command:

     curl https://raw.github.com/mm53bar/plow/master/install.sh | sh

Now you'll have some bash scripts in your `bin/` folder that will help you deploy the app. Start with `bin/deploy` to see how it works.

## Config Settings ##

Copy the settings from .env.sample to your own .env file.

## Branches ##

If you want to deploy a branch, just call `bin/deploy --rev=branch_name`.

## Functions ##

* [bin/deploy](https://github.com/mm53bar/plow/blob/master/bin/deploy)
* [bin/migrate](https://github.com/mm53bar/plow/blob/master/bin/migrate)
* start
* stop
* setup

## Troubleshooting ##

Make sure you have your [ssh-config set up to forward your ssh keys](https://help.github.com/articles/using-ssh-agent-forwarding).

## What's next? ##

This is really just a proof of concept. Extra flags could be added and more functions could be to come. But this proves how easy it is to start.
