class docker_management {
  class { '::docker_management::pull_from_public_registry': }
}
include ::docker_management
