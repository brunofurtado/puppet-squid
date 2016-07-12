# Class: squid
#
# This is the main squid class
#
<<<<<<< HEAD
# == Actions
#
#   - Install Squid package;
#   - Configure Squid service;
#
=======
>>>>>>> 96a152b854d5433b92c12366745aa49825881c66
# == Examples
#
# See README for details.
#
# == Author
#
# Bruno Furtado <suporte@brunofurtado.net>
#
<<<<<<< HEAD
class squid (
  $http_port             = [],
  $https_port            = [],
  $snmp_port             = '3401',
  $icp_port              = [ '3130' ],
  $htcp_port             = '4827',
  $ssl_ports             = [],
  $safe_ports            = [],
  $acl                   = [],
  $http_access           = [],
  $http_reply_access     = [],
  $deny_info             = [],
  $ip_servers            = [],
  $cache_mem             = '',
  $cache_dir             = [],
  $max_obj_size          = '',
  $logfile_rotate        = '',
  $cache                 = [],
  $refresh_pattern       = [],
  $cache_mgr             = '',
  $visible_hostname      = '',
  $snmp_access           = [],
  $log_icp_queries       = '',
  $max_icp_query_timeout = '',
  $error_directory       = '',
  $deny_info             = [],
  $always_direct         = [],
  $never_direct          = [],
  $cache_pwd             = '',
  $coredump_dir          = '',
) inherits ::squid::params {

  package { $::squid::params::package_name :
    ensure => $::squid::params::package_version,
  }

  service { $::squid::params::service_name :
    ensure     => running, 
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Package[ $::squid::params::package_name ],
  }   

  file { 'squid.conf':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    path    => "/etc/${squid::params::service_name}/squid.conf",
    content => template('squid/squid.conf.erb'),
    require => Package[ $::squid::params::package_name ],
    notify  => Service[ $::squid::params::service_name ],
  }

} 
=======
class squid {
  class { '::squid::package': } ->
  class { '::squid::config':  } ->
  class { '::squid::service': } ->
  Class [ 'squid' ]
}
>>>>>>> 96a152b854d5433b92c12366745aa49825881c66
