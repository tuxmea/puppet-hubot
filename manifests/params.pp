# Hubot params class
class hubot::params {
  case $::operatingsystem {
    /Debian|Ubuntu/: {
      $packages = ['build-essential', 'libssl-dev', 'git-core',
                    'redis-server', 'libexpat1-dev'
                  ]
      $npm_packages = ['coffee-script']
      $service_name = 'hubot'
    }
    /RedHat|CentOS/: {
      $packages = ['openssl-devel', 'git', 'redis', 'expat-devel']
      $npm_packages = ['coffee-script']
      $service_name = 'hubot'
    }
    default: {
        fail("Your OS: ${::operatingsystem} is not supported by this module")
    }
  }
  
  $options = {
    install_dir => '/opt/hubot',
    daemon_user => 'hubot',
    adapter     => 'irc',
    git_source  => 'https://github.com/github/hubot.git',
  }
  
  # Default Settings for IRC
  $irc = {
    nickname => 'crunchy',
    rooms    => ['#soggies'],
    server   => 'localhost',
  }
  # Default setting for XMPP
  $xmpp = {
    $server => 'localhost',
    $user   => 'user',
    $pass   => 'pass',
    $rooms  => 'hubot',
  }
}
