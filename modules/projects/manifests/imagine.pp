class projects::imagine {
  $node_version = "0.12.4"
  include phantomjs

  boxen::project { "imagine":
    nodejs        => $node_version,

    source        => "Boltmade/imagine",
    dir           => "${boxen::config::srcdir}/work/imagine"
  }

  npm_module { "bower for imagine ${node_version}":
    module       => "grunt-cli",
    version      => "~> 0.1",
    node_version => $node_version,
  }
}
