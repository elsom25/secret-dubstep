class projects::grandsocial {
  $node_version = "v0.12.0"

  boxen::project { "grandsocial":
    nodejs        => $node_version,
    redis         => true,
    mongodb       => true,

    source        => "elsom25/grandsocial",
    dir           => "${boxen::config::srcdir}/work/grandsocial"
  }

  nodejs::module { 'supervisor':
    node_version  => $node_version
  }

  nodejs::module { 'forever':
    node_version  => $node_version
  }
}
