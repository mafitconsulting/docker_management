class docker_management (
  String $password,
) inherits ::docker_management::params {
  class { '::docker_management::pull_from_public_registry': }
}
