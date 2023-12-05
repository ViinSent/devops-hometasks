node 'slave1.puppet' {
  class { 'apache':
    docroot => '/var/www/html',
  }

  # Копируем сайт
  file { '/var/www/html/index.html':
    ensure  => file,
    source  => 'puppet:///html/index.html',
    require => Class['apache'],
  }
}

node 'slave2.puppet' {
  class { 'php':
    docroot => '/var/www/html',
  }

  # Копируем сайт PHP
  file { '/var/www/html/index.php':
    ensure  => file,
    source  => 'puppet:///php/index.php',
    require => Class['php'],
  }
}