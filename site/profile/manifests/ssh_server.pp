class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                ensure => 'true',
        }
        ssh_authorized_key { 'Automachine':
                 ensure => present,
                 user => 'root',
                 type => 'ssh-rsa',
                 key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDCSTO4GmETyyRD9XxyakMQ94x8skKXfrJFx6WNPjJLckErSC6QaFoGuaQxjHUe28GNcU13ArwKbZFX/ZAS3FAJnWT20ltvroQFT2gWAfvf86wSgNNeuyskODyhLUQDH4tZR/6SnrhpPbR+MDG6UKeAsb8TFcX4L4NzjwPnPFXH6pD7aedKVjLIiotsoA28JX+APKpkgtUHJtRgEWPUmYiU4fonOqaC42XEkKsX/u+CLB05YNcCb5qSKCdNKqtqsCPwrJf4Br//kP2tVDZ4mKzb8VFsUOsInnjikBBVRNsf+A8L07QuBiBo65ByOzvG0c+/iTZbpSXCd1nLDsbvFS4j'
         }
  }        
         
