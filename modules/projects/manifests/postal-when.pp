class projects::postal-when {
  $node_version = "0.12.0"
  include phantomjs

  boxen::project { "postal-when":
    nodejs        => $node_version,

    source        => "elsom25/postal.when",
    dir           => "${boxen::config::srcdir}/forks/postal.when"
  }
}
