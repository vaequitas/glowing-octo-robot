class role::app {
  contain profile::golang
  contain profile::supervisord

  Class['profile::golang'] ~> Class['profile::supervisord']
}
