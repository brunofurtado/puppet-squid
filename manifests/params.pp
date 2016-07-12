# Class: params
#
class squid::params {

<<<<<<< HEAD
  case $::operatingsystem {
    'RedHat', 'CentOS': {
      $service_name = 'squid'
      $package_name = 'squid'
      $package_version = '3.3.8-26.el7_2.3'
    }
    'Debian', 'Ubuntu': {
      $service_name = 'squid3'
      $package_name = 'squid3'
      $package_version = '3.3.8-1ubuntu6.8'
    }
    default: {
      fail("${::operatingsystem} is not supported!")
    }
  }

  $access_log      = [ "/var/log/${service_name}/access.log squid" ]
  $cache_log       = "/var/log/${service_name}/cache.log"
  $cache_store_log = "/var/log/${service_name}/store.log"

}
=======
  case $::osfamily {
    RedHat: {
      $squid_service_name = 'squid'
      $squid_version = '3.3.8-26.el7_2.3'
    }
    Debian: {
      $squid_service_name = 'squid3'
      $squid_version = '3.3.8'
    }
    default: {
      fail("${::osfamily} is not supported!")
    }
  }

}
>>>>>>> 96a152b854d5433b92c12366745aa49825881c66
