$desc = $facts['os']['distro']['description']

notice($desc)

file { '/tmp/hello.txt':
  ensure  => file,
  content => "What's the story, morning glory\nFrom ${desc}",
}
