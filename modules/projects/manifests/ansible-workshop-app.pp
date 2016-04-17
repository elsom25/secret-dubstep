class projects::ansible-workshop-app {
  include postgresql
  $ruby_version = "2.3.0"
  $node_version = "0.12.0"

  boxen::project { "ansible-workshop-app":
    ruby          => $ruby_version,
    nodejs        => $node_version,

    source        => "boltmade/ansible-workshop-app",
    dir           => "${boxen::config::srcdir}/workshops/ansible/ansible-workshop-app"
  }

  ruby_gem { "bundler for ansible-workshop-app ruby ${ruby_version}":
    gem           => "bundler",
    ruby_version  => $ruby_version
  }
}
