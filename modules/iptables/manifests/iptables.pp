class iptables::iptables {
  file { "firewall":
    path    => "/etc/init.d/firewall",
    owner   => 'root',
    group   => 'root',
    mode    => '755',
    content => template('iptables/default.erb'),
    notify  => Exec["updateLaunch"],
  }

  exec { "updateLaunch":
      command => "update-rc.d firewall defaults",
      path => ["/bin", "/usr/bin", "/usr/sbin"]
  }
}