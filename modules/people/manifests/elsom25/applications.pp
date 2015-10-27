class people::elsom25::applications {
  include boxen::sudoers
  include brewcask
  include homebrew
  include hub

  # Install these with Cask - http://caskroom.io
  $cask_packages = [
    # "1password",      # Conflicts with appstore version
    "alfred",
    "bettertouchtool",
    "caffeine",
    "crashplan",      # TODO: Not installed via boxen yet...
    "dropbox",
    "evernote",
    "firefox",
    "flux",
    "goofy",
    "google-chrome",
    "google-drive",
    "iterm2",
    "java",           # TODO: Not installed via boxen yet...
    "path-finder",
    "slack",
    "sublime-text3",
    "todoist",
    "vagrant",        # TODO: Not installed via boxen yet...
    "virtualbox",     # TODO: Not installed via boxen yet...
    "ynab",
  ]

  # Install the cask packages.
  # You might need some sort of sudo hack. Tries to symlink stuff to non-writable dir
  # TODO: sudo hack not working yet...
  package { $cask_packages:
    ensure   => present,
    provider => "brewcask",
    require  => Sudoers["boxen"],
  }

  # Workaround for puppet-brewcask
  # https://github.com/phinze/puppet-brewcask/issues/9
  # https://github.com/caskroom/homebrew-cask/issues/7750
  # Let the "staff" group write to this.
  file { ["/usr/local", "/usr/local/bin"]:
    ensure   => "directory",
    owner    => "root",
    group    => "staff",
    mode     => "0775",
  }
}
