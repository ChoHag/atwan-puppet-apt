class apt::proxy ($proxy_url) {
  if $proxy_url != '' {
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
