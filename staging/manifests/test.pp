file { 'chris':
  ensure => file,
  path => '/tmp/chris',
  content => 'hello world - staging',
}
