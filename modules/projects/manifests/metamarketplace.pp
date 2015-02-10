class projects::metamarketplace {
  $ruby_version = "1.9.3-p448"
  include phantomjs

  boxen::project { "metamarketplace":
    ruby          => $ruby_version,
    mysql         => true,
    redis         => true,

    source        => "demeure/manyfeek",
    dir           => "${boxen::config::srcdir}/work/manyfeek"
  }

  ruby_gem { "bundler for ruby ${ruby_version}":
    gem  => "bundler",
    ruby_version => $ruby_version
  }
}
