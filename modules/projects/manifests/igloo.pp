class projects::igloo {
  $node_version = "0.12.7"
  include phantomjs

  boxen::project { "igloo":
    nodejs        => $node_version,

    source        => "Boltmade/igloo",
    dir           => "${boxen::config::srcdir}/work/igloo"
  }

  npm_module { "bower for igloo ${node_version}":
    module       => "grunt-cli",
    version      => "~> 0.1",
    node_version => $node_version,
  }
}
