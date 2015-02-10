class people::elsom25::dotfile {
  repository { "${my_sourcedir}/dotfiles":
    source => 'elsom25/dotfiles',
  }

  file { "${my_homedir}/.bash_aliases":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/bash_aliases",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "${my_homedir}/.bash_ps1":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/bash_ps1",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "${my_homedir}/.gitconfig":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/gitconfig",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "${my_homedir}/.gitignore_global":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/gitignore_global",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "${my_homedir}/.profile":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/profile",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "${my_homedir}/.pryrc":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/pryrc",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "${my_homedir}/.boot2dockerscripts":
    ensure  => link,
    mode    => '1644',
    target  => "${my_sourcedir}/dotfiles/boot2dockerscripts",
    require => Repository["${my_sourcedir}/dotfiles"],
  }
}
