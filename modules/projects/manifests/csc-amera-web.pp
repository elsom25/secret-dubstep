class projects::csc-amera-web {
  boxen::project { "csc-amera-web":
    source        => "boltmade/csc-amera-web",
    dir           => "${boxen::config::srcdir}/work/csc-amera-web"
  }
}
