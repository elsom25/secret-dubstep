class projects::airsuite-cirro-legacy {
  boxen::project { "airsuite-cirro-legacy":
    source        => "boltmade/airsuite-cirro-legacy",
    dir           => "${boxen::config::srcdir}/work/airsuite-cirro-legacy"
  }
}
