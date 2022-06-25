class symlink {
  # First create a symlink to /var/www/html
  file { '/opt/sysops':
    ensure => 'link',
    target => '/var/www/html',
  }
   # Now create story.txt under /opt/dba
  file { '/opt/sysops/story.txt':
    ensure => 'present',
  }
}
node 'stapp03.stratos.xfusioncorp.com' {
  include symlink
}
