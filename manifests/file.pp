$desc = $facts['os']['distro']['description']

$secret = lookup('test_secret',String)
notice($desc)

file { '/tmp/hello.txt':
  ensure  => file,
  content => "What's the story, morning glory\nFrom ${desc}\nSecret is ${secret}",
}
