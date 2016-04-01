class cassandrawrapper::server {

  apt::ppa { 'ppa:openjdk-r/ppa': } ->

  exec { "apt-get update":
    path => "/usr/bin",
  } ->

#  include cassandra::datastax_repo
#  include cassandra::java
  class { 'cassandra::datastax_repo': } ->
  class { 'cassandra::java': } ->

  class { 'cassandra':
    cluster_name    => 'TestCluster',
    endpoint_snitch => 'GossipingPropertyFileSnitch',
    listen_address  => $::ipaddress,
    seeds           => $::ipaddress,
    service_systemd => true,
    require         => Class['cassandra::datastax_repo', 'cassandra::java'],
  }

}