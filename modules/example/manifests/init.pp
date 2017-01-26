class example {
 file { 'example-module': 
   ensure => file,
   path => '/tmp/example-module.txt', 
   content => "Content from $environment module example, from manifest init.pp\n", 
 }
}
