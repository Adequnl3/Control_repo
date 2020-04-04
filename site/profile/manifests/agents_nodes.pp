class profile::agent_nodes {
  include dockeragent
  dockeragent:: {'web.puppet.vm'}
  dockeragent:: {'db.puppet.vm'}
  host {'web.puppet.vm':
    ensure => present,
    ip     => '10.1.0.5',
  }
