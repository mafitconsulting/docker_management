class docker_management::params {
   $password = hiera('docker_management::pull_from_public_registry::password')
}
