class hipchat(
  $manage_repo = true,
) {

  if $manage_repo {
    include hipchat::repo
    Class['hipchat::repo'] -> Package['hipchat']
  }

  package { 'hipchat':
    ensure => present,
  }

}
