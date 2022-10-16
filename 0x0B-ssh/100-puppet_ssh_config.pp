# creates a config file in ~/.ssh/config

file { '/root/.ssh/config':
  ensure  => 'present',
  content => "Host *\n\tPasswordAuthentication no\n\tIdentityFile ~/.ssh/school",
  }
