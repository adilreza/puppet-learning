class mysql_database {
    package {'mariadb-server':
      ensure => installed
    }

    service {'mariadb':
        ensure    => running,
        enable    => true,
    }    

    mysql::db { 'kodekloud_db7':
      user     => 'kodekloud_rin',
      password => 'YchZHRcLkL',
      host     => 'localhost',
      grant    => ['ALL'],
    }
}

node 'stdb01.stratos.xfusioncorp.com' {
  include mysql_database
}

mysql -u kodekloud_rin -p kodekloud_db7 -h localhost

