exec { 'apt_update':
  command => 'apt-get update',
  path    => '/usr/bin'
}

class { 'git::install': }
class { 'subversion::install': }
class { 'apache2::install': }
class { 'php5::install': }
class { 'mysql::install': }
class { 'wordpress::install': }
class { 'phpmyadmin::install': }

file { '/etc/hosts':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  source  => '/vagrant/vagrant/files/etc/hosts'
}
