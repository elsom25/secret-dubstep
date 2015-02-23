class projects::imagine {
  $node_version = "v0.11.16"
  include phantomjs

  boxen::project { "imagine":
    nodejs        => $node_version,

    source        => "Boltmade/imagine",
    dir           => "${boxen::config::srcdir}/work/imagine"
  }

  nodejs::module { 'grunt-cli':
    node_version  => $node_version
  }

  nodejs::module { 'police':
    node_version  => $node_version
  }

  nodejs::module { 'constable':
    node_version  => $node_version
  }
}
