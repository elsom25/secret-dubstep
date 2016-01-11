class projects::airsuite-cirro-ansible {
  boxen::project { "airsuite-cirro-ansible":
    source        => "boltmade/airsuite-cirro-ansible",
    dir           => "${boxen::config::srcdir}/work/airsuite-cirro-ansible"
  }
}
