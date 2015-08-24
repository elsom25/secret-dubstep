class projects::igloo {
  $node_version = "0.12.4"
  include phantomjs

  boxen::project { "igloo":
    nodejs        => $node_version,

    source        => "Boltmade/igloo",
    dir           => "${boxen::config::srcdir}/work/igloo"
  }
}
