class people::elsom25::shell {
  osx_chsh { $::boxen_user:
    shell   => "${boxen::config::homebrewdir}/bin/bash",
    require => Package['bash'],
  }

  file_line { 'add bash to /etc/shells':
    path    => '/etc/shells',
    line    => "${boxen::config::homebrewdir}/bin/bash",
    require => Package['bash'],
  }
}
