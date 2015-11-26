class hipchat(
  $manage_repo = true,
) {

  if $manage_repo {
    include hipchat::repo
    Package['hipchat'] -> Class['hipchat::repo']
  }

  package { 'hipchat':
    ensure => installed,
  }

}
