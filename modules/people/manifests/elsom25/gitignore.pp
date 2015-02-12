class people::elsom25::gitignore {
  Git::Config::Global <| title == "core.excludesfile" |> {
    value => "~/.gitignore_global"
  }
}
