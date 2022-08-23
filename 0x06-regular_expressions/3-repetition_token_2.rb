#!/usr/bin/env ruby
# Find the regular expression that will match repeatition cases 3
puts ARGV[0].scan(/hbt{1,}n/).join
