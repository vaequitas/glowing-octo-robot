class golang (
  Optional[Enum['present', 'absent']] $ensure = $::golang::params::ensure
) inherits ::golang::params {
  package {'golang':
    ensure   => $ensure,
    provider => 'yum',
  }
}
