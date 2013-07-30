# mandatory
class { 'bootstrap': }
class { 'misc::misc': }

# PHP5
class { 'php5::php5': }
class { 'php5::php54dotdeb': }
class { 'php5::mongo': }
class { 'php5::phptool': }
class { 'php5::composer': }

# Apache2
class { 'apache2::apache2': }

# MySQL
class { 'mysql::mysql': }
class { 'php5::mysql': }

# Memcached
class { 'memcached::memcached': }
class { 'php5::memcached': }

# MongoDB
class { 'mongodb::mongodb': }
class { 'mongodb::mongodb-10gen': }

# IPTables
class { 'iptables::iptables': }