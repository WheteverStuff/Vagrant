exec { "apt-get update":
  path => "/usr/bin",
}

package { [ "python-software-properties",
			"software-properties-common" ]:
	ensure => "installed"
}

class { 'nginx': }
class { '::hhvm': }

class { '::mysql::server': }
#class { 'cassandrawrapper::server': }
