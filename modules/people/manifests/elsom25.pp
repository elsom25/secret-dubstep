class people::elsom25 {
  $home     = "/Users/jesse"
  notify { 'class people::elsom25 declared': }
  include people::elsom25::shell
  include projects::all
}
