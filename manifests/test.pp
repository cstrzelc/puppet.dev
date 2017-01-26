file { 'chris':
  ensure => file,
  path => '/tmp/chris',
  content => 'hello world - development',
}

notify { 'test-notify':
  name => 'name-tag',
  message => "message from the notify tag: $environment",
}

node default {
  include example
}
