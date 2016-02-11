puppet-hubot
============
James Fryman <james@frymanet.com>

This module deploys Hubot

# Quick Start

Install and bootstrap a Hubot instance

Tested on Debian Squeeze

# Requirements

Puppet Labs Standard Library
- http://github.com/puppetlabs/puppetlabs-stdlib

Puppet Labs NodeJS
- http://github.com/puppetlabs/puppetlabs-nodejs

<pre>
  class { 'hubot':
    adapter            => 'irc',
    irc_nickname       => 'crunchy',
    irc_server         => 'irc.freenode.com',
    irc_rooms          => ['#soggies'],
    manage_git_package => true,
  }
</pre>

# Environment Variables
Some scripts require environment variables to be set at run time. this can be acheived with the environment option:

<pre>
  class { 'hubot':
    adapter => 'irc',
    irc_nickname => 'crunchy',
    irc_server   => 'irc.freenode.com',
    irc_rooms    => ['#soggies'],
    environment  => [ 'MYVAR=VAR1', 'THISVAR=that' ],
  }
</pre>
# TODO
- Add Redhat Support?

