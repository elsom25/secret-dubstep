class projects::face-danger-bot {
  boxen::project { "face-danger-bot":
    source        => "boltmade/face-danger-bot",
    dir           => "${boxen::config::srcdir}/bots/face-danger-bot"
  }
}
