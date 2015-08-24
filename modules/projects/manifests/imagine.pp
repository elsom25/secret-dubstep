class projects::imagine {
  $node_version = "0.12.4"
  include phantomjs

  boxen::project { "imagine":
    nodejs        => $node_version,

    source        => "Boltmade/imagine",
    dir           => "${boxen::config::srcdir}/work/imagine"
  }
}
