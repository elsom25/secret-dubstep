class projects::handbook {
  $ruby_version = "2.2.2"
  $node_version = "v0.12.0" # bundle dependencies make Boxen freakout without this

  boxen::project { "handbook":
    ruby          => $ruby_version,
    nodejs        => $node_version,

    source        => "boltmade/handbook",
    dir           => "${boxen::config::srcdir}/work/handbook"
  }

  ruby_gem { "bundler for handbook ruby ${ruby_version}":
    gem           => "bundler",
    ruby_version  => $ruby_version
  }

  ruby_gem { "bundler-bower for handbook ruby ${ruby_version}":
    gem           => "bundler-bower",
    ruby_version  => $ruby_version
  }
}
