class docker_management::pull_from_public_registry (
  String $password,
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
