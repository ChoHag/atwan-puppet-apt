define apt::source(
  $file         = "/etc/apt/sources.list.d/$name.list",
  $source       = false,
  $url          = 'UNDEFINED',
  $suite        = 'UNDEFINED',
  $sections     = [ 'main' ],
  $repositories,
) {
  file { $file:
    ensure  => file,
    content => template('apt/sources_list_d.erb');
  }
}
