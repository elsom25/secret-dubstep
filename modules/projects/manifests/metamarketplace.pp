class projects::metamarketplace {
  boxen::project { 'metamarketplace':
    mysql         => true,
    redis         => true,
    ruby          => '1.9.3-p448',
    phantomjs     => true,

    dir           => 'work/boltmade/manyfeek',
    source        => 'demeure/manyfeek'
  }
}
