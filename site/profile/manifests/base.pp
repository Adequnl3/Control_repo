create base::base {
   user {'admin':
   ensure => present,
   }
   include profile::ssh_server
}
