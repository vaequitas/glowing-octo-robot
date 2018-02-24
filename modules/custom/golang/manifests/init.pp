class golang (
  $ensure = 'present'
){
  package {'golang':
    ensure   => $ensure,
    provider => 'yum',
  }
}
