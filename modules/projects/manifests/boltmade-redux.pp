class projects::boltmade-redux {
  include qt
  include phantomjs
  phantomjs::version { "2.0.0": }
  $ruby_version = "2.2.2"
  $node_version = "0.12.0" # for bower dependencies

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
