class t_installer {

    package {'vsftpd':

        ensure => installed

    }

    service {'vsftpd':

        ensure    => running,

        enable    => true,

    }

}

node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {

  include vsftpd_installer

}
