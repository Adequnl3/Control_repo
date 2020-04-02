node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
   }
  }
  node 'automachine.eastus.cloudapp.azure.com' {
    include role::master_server
}
