class projects::handbook {
  $ruby_version = "2.2.2"

  boxen::project { "handbook":
    ruby          => $ruby_version,

    source        => "boltmade/handbook",
    dir           => "${boxen::config::srcdir}/work/handbook"
  }

  ruby_gem { "bundler for ruby ${ruby_version}":
    gem           => "bundler",
    ruby_version  => $ruby_version
  }
}
