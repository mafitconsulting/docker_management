docker::run { 'mywebserver':
  ensure => 'present',
  image => 'fieldhousem/myapacheweb:v1',
  ports  => '80',
  expose => '80',
}
