class people::elsom25::dotfile {
  $dotfiles = "${boxen::config::srcdir}/dotfiles"

  repository { $dotfiles:
    source   => "${::github_login}/dotfiles",
    require  => File["${boxen::config::srcdir}"],
  }

  exec { "install dotfiles":
    provider => shell,
    command  => "./script/install",
    cwd      => $dotfiles,
    creates  => "${home}/.profile",
    require  => Repository[$dotfiles],
  }
}
