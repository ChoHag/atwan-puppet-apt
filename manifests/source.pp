define apt::source(
  $file         = "/etc/apt/sources.list.d/$name.list",
  $source       = false,
  $url          = 'UNDEFINED',
  $suite        = 'UNDEFINED',
  $sections     = [ 'main' ],
  $repositories = 'UNDEFINED',
) {
  if $repositories
      and $repositories != 'UNDEFINED'
      and $repositories != '-' {
    file { $file:
      ensure  => file,
      content => template('apt/sources_list_d.erb'),
      notify  => Class['apt::update'];
    }
  } else {
    file { $file:
      ensure  => absent,
      notify  => Class['apt::update']; # Not technically necessary
    }
  }
}
