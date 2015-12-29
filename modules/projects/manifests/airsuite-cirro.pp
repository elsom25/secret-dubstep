class projects::airsuite-cirro {
  $ruby_version = "2.2.3"
  # $node_version = "5.1.0"

  boxen::project { "airsuite-cirro":
    ruby          => $ruby_version,
    # nodejs        => $node_version,

    source        => "boltmade/airsuite-cirro",
    dir           => "${boxen::config::srcdir}/work/airsuite-cirro"
  }

  ruby_gem { "bundler for airsuite-cirro ruby ${ruby_version}":
    gem           => "bundler",
    ruby_version  => $ruby_version
  }
}
