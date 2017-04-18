class profiles::noipv6 {

  sysctl { "net.ipv6.conf.all.autoconf":
    ensure => present,
    value  => "0",
    silent => true
  }

}

