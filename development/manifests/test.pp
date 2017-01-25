file { 'chris':
  ensure => file,
  path => '/tmp/chris',
  content => 'hello world - development',
}

notify { 'test-notify':
  name => 'name-tag',
  message => "message from the notify tag: $enviornment",
}

node 'puppetclient.zfsgoat.com' {
  include example
}
