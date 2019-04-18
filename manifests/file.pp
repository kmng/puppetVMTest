file { '/tmp/hello.txt':
  ensure  => file,
  content => "What's the story, morning glory\n",
}
