class projects::csc-amera-auth {
  $ruby_version = "2.2.2"
  $node_version = "4.0.0" # for bower dependencies

  boxen::project { "csc-amera-auth":
    ruby          => $ruby_version,
    nodejs        => $node_version,
    mysql         => true,

    source        => "boltmade/csc-amera-auth",
    dir           => "${boxen::config::srcdir}/work/csc-amera-auth"
  }

  ruby_gem { "bundler for csc-amera-auth ruby ${ruby_version}":
    gem           => "bundler",
    ruby_version  => $ruby_version
  }
}
