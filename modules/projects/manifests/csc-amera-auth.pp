class projects::csc-amera-auth {
  boxen::project { "csc-amera-auth":
    source        => "boltmade/csc-amera-auth",
    dir           => "${boxen::config::srcdir}/work/csc-amera-auth"
  }
}
