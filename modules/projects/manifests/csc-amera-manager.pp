class projects::csc-amera-manager {
  $ruby_version = "2.2.2"

  boxen::project { "csc-amera-manager":
    ruby          => $ruby_version,
    source        => "boltmade/csc-amera-manager",
    dir           => "${boxen::config::srcdir}/work/csc-amera-manager"
  }
}
