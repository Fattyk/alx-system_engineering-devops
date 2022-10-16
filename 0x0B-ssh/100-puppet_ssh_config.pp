# creates a config file in ~/.ssh/config

file { '/root/.ssh/config':
  ensure  => 'present',
  content => "\nHost *\n\tPasswordAuthentication no\tIdentityFile ~/.ssh/school",
  }
