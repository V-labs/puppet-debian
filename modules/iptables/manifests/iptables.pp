class iptables::iptables {
  file { "firewall":
    ensure => present,
    path    => "/etc/init.d/firewall",
    owner   => 'root',
    group   => 'root',
    mode    => '755',
    content => template('iptables/default.erb'),
    notify  => Exec["updateLaunch"],
  }

  service { "iptables":
        ensure => running,
        enable => true,
        require => [
            File['/etc/init.d/firewall']
        ]
    }
}