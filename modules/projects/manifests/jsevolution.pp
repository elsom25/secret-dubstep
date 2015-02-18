class projects::jsevolution {
  $node_version = "v0.11.16"
  include phantomjs

  boxen::project { "jsevolution":
    nodejs        => $node_version,

    source        => "coding-js/jsevolution",
    dir           => "${boxen::config::srcdir}/workshops/jsevolution"
  }

  nodejs::module { 'traceur':
    node_version  => $node_version
  }

  nodejs::module { 'gulp':
    node_version  => $node_version
  }

  nodejs::module { 'bower':
    node_version  => $node_version
  }
}
