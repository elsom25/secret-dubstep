class people::elsom25 {
  $home   = "/Users/jesse"

  include people::elsom25::osx
  include people::elsom25::shell
  include people::elsom25::dotfiles
  include people::elsom25::gitignore
  include people::elsom25::applications

  include projects::all
}
