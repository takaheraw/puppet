class user {

    user { 'takaheraw':
        ensure => present,
        gid => 'users',
        password => '$6$AmVfJdS1$2nkl1SWJsg6Q.4jlKr91mrxmhpMtMlS5raxnbKi/jiv.GqOTETjjWavKdqMfEbsdYuBLH1.OqVdZCYNUCqILv0',
        managehome => true;
    }

}
