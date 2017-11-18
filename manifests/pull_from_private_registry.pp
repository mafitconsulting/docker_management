class docker_management::pull_from_private_registry (
  $password = ::docker::registry::password,
) {
  docker::registry { 'https://index.docker.io/v1/':
    username  => 'fieldhousem',
    password  => $password,
    email     => 'Mark.Fieldhouse@mafitconsulting.co.uk',
  }

  docker::image{'fieldhousem/myapacheweb':
    ensure    => present,
    image_tag => 'v1',
  }
}
