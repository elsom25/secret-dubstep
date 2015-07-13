class projects::imagine-configurator {
  boxen::project { "imagine-configurator":
    source        => "boltmade/imagine-configurator",
    dir           => "${boxen::config::srcdir}/work/imagine-configurator"
  }
}
