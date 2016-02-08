class projects::citysight-widgets {
  boxen::project { "citysight-widgets":
    source        => "Boltmade/citysight-widgets",
    dir           => "${boxen::config::srcdir}/work/citysight-widgets"
  }
}
