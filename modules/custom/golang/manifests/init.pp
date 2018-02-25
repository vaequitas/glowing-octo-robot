class golang (
  Optional[Enum['present', 'absent']] $ensure = $::golang::params::ensure
) inherits ::golang::params {
  case $osfamily {
    'CentOS', 'RedHat': {
      package { 'golang':
        ensure   => $ensure,
        provider => 'yum',
      }
    }
    default: {
      fail "Module `${module_name}` does not currently support OSFamily `${osfamily}`."
    }
  }
}
