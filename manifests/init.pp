class docker_management (
  String $password = $::docker_management::params::password,
) inherits ::docker_management::params {
  class { '::docker_management::pull_from_public_registry': }
  -> class { '::docker_management::run_container.pp': }
}
