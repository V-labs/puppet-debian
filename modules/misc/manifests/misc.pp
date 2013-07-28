class misc::misc {
    package { ["curl"]:
        ensure => latest,
        require => Exec["aptGetUpdate"],
    }
}