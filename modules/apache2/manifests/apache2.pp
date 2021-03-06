class apache2::apache2 {
    package { "apache2-mpm-prefork":
        ensure => latest,
        require => Exec["aptGetUpdate"],
    }

    package { "libapache2-mod-php5":
        ensure => latest,
        require => Package["apache2-mpm-prefork"],
        notify => Service["apache2"],
    }

    service { "apache2":
        ensure => running,
        require => Package["apache2-mpm-prefork"],
        subscribe => File["mod_rewrite"]
    }

    file { "mod_rewrite":
        path => "/etc/apache2/mods-enabled/rewrite.load",
        ensure => "link",
        target => "/etc/apache2/mods-available/rewrite.load",
        require => Package["apache2-mpm-prefork"]
    }
}