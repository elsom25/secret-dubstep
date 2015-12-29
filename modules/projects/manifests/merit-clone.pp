class projects::merit-clone {
  $ruby_version = "1.9.3-p448"
  # include imagemagick # imagemagick version for boxen is off
  include phantomjs

  boxen::project { "merit-clone":
    ruby          => $ruby_version,
    mysql         => true,
    redis         => true,

    source        => "Demeure/merit-clone",
    dir           => "${boxen::config::srcdir}/work/merit-clone"
  }

  ruby_gem { "bundler for merit-clone ruby ${ruby_version}":
    gem           => "bundler",
    ruby_version  => $ruby_version
  }

  # exec { "solr for ${name}":
  #   command  => "env -i bash -c 'source /opt/boxen/env.sh && RBENV_VERSION=${ruby_version} rake sunspot:solr:start'",
  #   path    => $path,
  # }
}
