class file_creator {

  file { '/opt/data/ecommerce.txt':

    ensure => 'present',

  }
}
 node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {

  include file_creator

}
