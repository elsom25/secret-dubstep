class people::elsom25::applications {
  include brewcask
  package { "java": provider => "brewcask" }
  package { "virtualbox": provider => "brewcask" }
}
