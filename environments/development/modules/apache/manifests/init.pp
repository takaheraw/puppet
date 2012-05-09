class apache {

    package { 'httpd':
        ensure => present,
        notify => Service['httpd'],
    }

    file { '/etc/httpd/conf/httpd.conf':
        content => template('etc/httpd/conf/httpd.conf'),
        require => Package['httpd'],
        notify => Service['httpd'],
    }

    service { 'httpd': 
        enable => true,
        ensure => running, 
    }

}
