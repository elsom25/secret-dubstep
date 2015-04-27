class projects::jcmcginnis-2015 {
  $ruby_version = "2.1.4"

  boxen::project { "jcmcginnis-2015":
    ruby          => $ruby_version,

    source        => "elsom25/jcmcginnis-2015",
    dir           => "${boxen::config::srcdir}/jcmcginnis-2015"
  }

  ruby_gem { "bundler for ruby ${ruby_version}":
    gem           => "bundler",
    ruby_version  => $ruby_version
  }
}
