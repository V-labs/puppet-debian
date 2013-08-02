class misc::misc {
    package { ["curl"]:
        ensure => latest,
        require => Exec["aptGetUpdate"],
    }

    package { ["htop"]:
        ensure => latest,
        require => Exec["aptGetUpdate"],
    }

    package { ["libwww-perl"]:
        ensure => latest,
        require => Exec["aptGetUpdate"],
    }
}