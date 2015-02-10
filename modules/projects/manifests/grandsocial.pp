class projects::grandsocial {
  $node_version = "v0.12.0"

  boxen::project { "grandsocial":
    nodejs        => $node_version,
    redis         => true,
    mongodb       => true,

    source        => "djensenius/grandsocial",
    dir           => "${boxen::config::srcdir}/work/${name}"
  }

  nodejs::module { 'supervisor':
    node_version  => $node_version
  }

  nodejs::module { 'forever':
    node_version  => $node_version
  }
}
