class roles::puppetmaster {
}

class {'puppet_operational_dashboards::telegraf::agent':
  collection_method => 'local',
}
