class projects::airsuite-cirro {
  boxen::project { "airsuite-cirro":
    source        => "boltmade/airsuite-cirro",
    dir           => "${boxen::config::srcdir}/work/airsuite-cirro"
  }
}
