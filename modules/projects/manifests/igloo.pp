class projects::igloo {
  $ruby_version = "2.2.2"
  $node_version = "0.12.4"
  include phantomjs

  boxen::project { "igloo":
    ruby          => $ruby_version,
    nodejs        => $node_version,

    source        => "Boltmade/igloo",
    dir           => "${boxen::config::srcdir}/work/igloo"
  }
}
