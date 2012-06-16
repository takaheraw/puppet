class memcached {

    package { 'memcached':
                  provider => rpm,
                  source => "http://pkgs.repoforge.org/memcached/memcached-1.4.7-1.el6.rfx.x86_64.rpm",
                  ensure => present,
                  notify => Service['memcached'],
    }

    service { 'memcached':
                  enable => true,
                  ensure => running,
    }

}
