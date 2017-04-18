class profiles::noipv6 {

  sysctl { "net.ipv6.conf.all.autoconf":
    ensure => absent,
  }

  sysctl { "net.ipv6.conf.all.disable_ipv6":
    ensure => present,
    value  => "1",
    silent => true
  }

}

