class docker_management::pull_from_public_registry (
  String $password,
){

  notify { 'password_notifcation': 
    message => "This is a notification from ${password}",
  }

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
