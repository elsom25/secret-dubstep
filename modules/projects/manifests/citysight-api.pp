class projects::citysight-api {
  boxen::project { "citysight-api":
    source        => "Boltmade/citysight-api",
    dir           => "${boxen::config::srcdir}/work/citysight-api"
  }
}
