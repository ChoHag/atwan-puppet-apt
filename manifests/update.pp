class apt::update {
  exec { "apt-get update":
    refreshonly => true;
  }
}
