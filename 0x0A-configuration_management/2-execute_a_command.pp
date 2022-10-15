# Create a manifest that kills a process named killmenow using puppet

exec { 'pkill killmenow':
  provider => shell,
  }
