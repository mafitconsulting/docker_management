<<<<<<< HEAD
class docker_management {
=======
class docker_management (
  String $password,
) {
>>>>>>> d9bcd8540aac3b7a6773439f7718f0c5e007919c
  class { '::docker_management::pull_from_public_registry': }
}
