class fluentd {

    package { 'td-agent':
                  ensure => present,
                  notify => Service['td-agent'],
    }

    file { '/etc/td-agent/td-agent.conf':
               content => template('etc/td-agent/td-agent.conf'),
               require => Package['td-agent'],
               notify => Service['td-agent'],
    }

    service { 'td-agent':
                  enable => true,
                  ensure => running,
    }

}
