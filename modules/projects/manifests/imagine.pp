class projects::imagine {
  $node_version = "v0.12.2"
  include phantomjs

  boxen::project { "imagine":
    nodejs        => $node_version,

    source        => "Boltmade/imagine",
    dir           => "${boxen::config::srcdir}/work/imagine"
  }

  nodejs::module { 'grunt-cli':
    node_version  => $node_version
  }
}
