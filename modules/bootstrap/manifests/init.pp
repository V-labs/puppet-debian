class bootstrap {
    exec { "aptGetUpdate":
        command => "apt-get update",
        path => ["/bin", "/usr/bin"]
    }
}