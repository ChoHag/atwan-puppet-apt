class apt::proxy ($proxy_url = 'UNDEFINED') {
  if $proxy_url and $proxy_url != 'UNDEFINED' {
    file { "/etc/apt/apt.conf.d/proxy":
      ensure  => file,
      content => template('apt/apt_conf_proxy.erb');
    }
  } else {
    file { "/etc/apt/apt.conf.d/proxy":
      ensure  => absent;
    }
  }
}
