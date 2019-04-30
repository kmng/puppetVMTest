docker::image { 
'bitfield/hello':  
ensure => 'latest',
}

docker::run { 'hello':
  image   => 'bitfield/hello',
  command => '/bin/sh -c "while true; do echo Hello, world; sleep 1; done"',
}

docker::run { 'mount_test':
  image   => 'library/alpine:3.6',
  volumes => ['/tmp/container_data:/mnt/data'],
  command => '/bin/sh -c "echo Hello, world >/mnt/data/hello.txt"',
}
