file { 'chris':
  ensure => file,
  path => '/tmp/chris',
  content => 'hello world - development',
}

notify { 'test-notify':
  name => 'name-tag',
  message => "message from the notify tag: $environment",
}

notify { 'ntp-notify':
  name => 'ntp-server',
  message => "this is the ntp server: $ntpserver",
}

node default {
  include example
}
