class docker_management (
  String $password,
) {
  class { '::docker_management::pull_from_public_registry': }
}
