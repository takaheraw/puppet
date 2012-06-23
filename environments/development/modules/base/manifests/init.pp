class base {

    # local repository
    file { '/etc/yum.repos.d/centos-local.repo':
        mode   => 644,
        owner  => 'root',
        group  => 'root',
        source => "puppet://puppet-master-server/${environment}/etc/yum.repos.d/centos-local.repo",
    }

    # td-agent repository
    file { '/etc/yum.repos.d/td.repo':
        mode   => 644,
        owner  => 'root',
        group  => 'root',
        source => "puppet://puppet-master-server/${environment}/etc/yum.repos.d/td.repo",
    }

    exec { 'yum clean all':
        path => '/usr/bin:/usr/sbin',
        command => "yum clean all",
        require => [ File['/etc/yum.repos.d/centos-local.repo'], File['/etc/yum.repos.d/td.repo'] ]
    }
    
}
