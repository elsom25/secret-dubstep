class projects::boltmade-redux {
  $ruby_version = "2.2.2"
  $node_version = "v0.12.0" # for bower dependencies

  boxen::project { "boltmade-redux":
    ruby          => $ruby_version,
    nodejs        => $node_version,

    source        => "boltmade/boltmade.com",
    dir           => "${boxen::config::srcdir}/work/boltmade.com-redux"
  }

  ruby_gem { "bundler for boltmade-redux ruby ${ruby_version}":
    gem           => "bundler",
    ruby_version  => $ruby_version
  }
}
