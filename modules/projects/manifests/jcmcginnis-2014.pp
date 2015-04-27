class projects::jcmcginnis-2014 {
  $ruby_version = "2.1.1"

  boxen::project { "jcmcginnis-2014":
    ruby          => $ruby_version,

    source        => "elsom25/jcmcginnis-2014",
    dir           => "${boxen::config::srcdir}/jcmcginnis-2014"
  }

  ruby_gem { "bundler for ruby ${ruby_version}":
    gem           => "bundler",
    ruby_version  => $ruby_version
  }
}
