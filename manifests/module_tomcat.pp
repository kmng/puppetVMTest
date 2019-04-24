tomcat::install { '/opt/tomcat8':
  source_url => 'https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.32/bin/apache-tomcat-8.0.32.tar.gz'
}
tomcat::instance { 'tomcat8-default':
  catalina_home => '/opt/tomcat8',
  catalina_base => '/opt/tomcat8',
}

tomcat::config::server { 'tomcat8-default':
  catalina_base => '/opt/tomcat8',
  port          => '8006',
}

