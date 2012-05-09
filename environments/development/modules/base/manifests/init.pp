class base {

    # local repository
    file { '/etc/yum.repos.d/centos-local.repo':
        mode   => 644,
        owner  => 'root',
        group  => 'root',
        source => "puppet://puppet-master-server/${environment}/etc/yum.repos.d/centos-local.repo",
    }

    exec { 'yum clean all':
        path => '/usr/bin:/usr/sbin',
        command => "yum clean all",
        require => File['/etc/yum.repos.d/centos-local.repo'],
    }
    
}
