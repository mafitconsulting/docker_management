class docker_management::params {
    $password = hiera('docker_managment::pull_from_public_registry::password', 'Tcnnection')
}
