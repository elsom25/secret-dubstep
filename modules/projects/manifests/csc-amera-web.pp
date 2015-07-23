class projects::csc-amera-web {
  $ruby_version = "2.2.2"
  $node_version = "v0.12.0" # for bower dependencies

  boxen::project { "csc-amera-web":
    ruby          => $ruby_version,
    nodejs        => $node_version,

    source        => "boltmade/csc-amera-web",
    dir           => "${boxen::config::srcdir}/work/csc-amera-web"
  }

  ruby_gem { "bundler for csc-amera-web ruby ${ruby_version}":
    gem           => "bundler",
    ruby_version  => $ruby_version
  }
}
