class projects::airsuite {
  # $node_version = "0.12.4"
  # include phantomjs

  boxen::project { "airsuite":
    # nodejs        => $node_version,

    source        => "Boltmade/airsuite-cirro-legacy",
    dir           => "${boxen::config::srcdir}/work/airsuite"
  }
}
