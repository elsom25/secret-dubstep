class projects::boltmade {
  $ruby_version = "2.0.0"
  $node_version = "0.12.0" # bundle dependencies make Boxen freakout without this
  include qt

  boxen::project { "boltmade":
    ruby          => $ruby_version,
    nodejs        => $node_version,
    postgresql    => true,

    source        => "boltmade/boltmade.com",
    dir           => "${boxen::config::srcdir}/work/boltmade.com"
  }

  ruby_gem { "bundler for ruby ${ruby_version}":
    gem           => "bundler",
    ruby_version  => $ruby_version
  }

  ruby_gem { "foreman for ruby ${ruby_version}":
    gem           => "foreman",
    ruby_version  => $ruby_version
  }
}
