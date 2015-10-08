class people::elsom25::applications {
  include boxen::sudoers
  include brewcask
  include homebrew
  include hub

  # Install these with Cask - http://caskroom.io
  $cask_packages = [
    'caffeine',
    'dropbox',
    'evernote',
    'firefox',
    'flux',
    'github',
    'google-hangouts',
    'google-chrome',
    'slack',
    'iterm2',
    'sublime-text',
    'java',
    'vagrant',
    'virtualbox',
  ]

  # Install the cask packages.
  # You might need some sort of sudo hack. Tries to symlink stuff to non-writable dir
  package { $cask_packages:
    ensure   => present,
    provider => 'brewcask',
    require  => Sudoers['boxen'],
  }

  # Workaround for puppet-brewcask
  # https://github.com/phinze/puppet-brewcask/issues/9
  # https://github.com/caskroom/homebrew-cask/issues/7750
  # Let the 'staff' group write to this.
  file { ['/usr/local', '/usr/local/bin']:
    ensure   => 'directory',
    owner    => 'root',
    group    => 'staff',
    mode     => '0775',
  }
}
