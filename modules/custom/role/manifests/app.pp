class role::app {
  contain profile::golang
  contain profile::supervisord
}
