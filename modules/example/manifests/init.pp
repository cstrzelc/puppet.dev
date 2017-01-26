class example {
 file { 'example-module': 
   ensure => file,
   path => '/tmp/example-module.txt', 
   content => "Content from my $environment module example, from manifest init.pp for $hostname\n", 
 }
}
