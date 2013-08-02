class munin::munin {
	package { "munin-node":
        ensure => latest,
        require => [
        	Package["libwww-perl"],
        	Exec["aptGetUpdate"],
        ]
    }

	service { "munin-node":
        ensure => running,
        require => Package["munin-node"],
    }
}