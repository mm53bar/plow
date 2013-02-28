# Bash Deployment with Plow#

I've been rethinking my use of capistrano.  My config files seem bloated with settings that are less about deployment and more about configuration. My callbacks are getting out of control. Going with a [git-based strategy](https://github.com/blog/470-deployment-script-spring-cleaning) requires replacing a bunch of standard tasks.

Ultimately, it seems like Capistrano is more of a platform than a tool. I still like it but I want to see what else might work.

I decided to see what I could do if I just whipped up a few simple bash scripts that would do the deployment for me. No callbacks and leveraging the [foreman config that I already have](http://www.12factor.net/config).

The idea here is that you take plow and customize it to your liking. I use bluepill to manage my unicorns. Don't use bluepill? Fine by me! Fork the repo and update `bin/deploy` to restart unicorn directly. You're only going to have to change [one line of code](https://github.com/mm53bar/plow/blob/master/bin/deploy#L32).

## Usage ##

    bin/plow test                         # runs test script
    bin/plow gitrev production            # gets SHA for HEAD on production server

## Install ##

`cd` to your rails app. Install plow with the following command:

     curl https://raw.github.com/mm53bar/plow/recipes/install.sh | sh

Now you'll have `bin/plow` in your app folder. Read `bin/plow` to see how it works and give it a try by running `bin/plow test`.

## What's with the .env files? ##

Storing your config settings in an `.env` file is something I first read about in the [12-Factor app docs](http://www.12factor.net/config). Foreman also supports the `.env` files. When I started looking for a place to store config settings, an `.env` file made more sense than something like a Capfile.

I've also pushed this a bit further when it comes to support multi-stage deployments. If you are deploying your code to a staging environment, create an `.env.staging` file in your app with all of your staging settings. For production, create an `env.production` file. Those files will get copied up to your server as `.env`.

## Troubleshooting ##

Make sure you have your [ssh-config set up to forward your ssh keys](https://help.github.com/articles/using-ssh-agent-forwarding).

## What's next? ##

This is really just a proof of concept. Extra flags could be added and more functions could be to come. But this proves how easy it is to start.
