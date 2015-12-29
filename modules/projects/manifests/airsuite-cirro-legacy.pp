class projects::airsuite-cirro-legacy {
  $node_version = "0.10.25"

  boxen::project { "airsuite-cirro-legacy":
    nodejs        => $node_version,

    source        => "Boltmade/airsuite-cirro-legacy",
    dir           => "${boxen::config::srcdir}/work/airsuite-cirro-legacy"
  }
}
