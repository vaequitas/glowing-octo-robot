class role::web::load_balancer {
  contain profile::nginx
  contain profile::selinux
}
