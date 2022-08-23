#!/usr/bin/env ruby
# Find the regular expression that will match repeatition cases 4
#puts ARGV[0].scan(/hbt{0,}n/).join # method 1
puts ARGV[0].scan(/hbt*n/).join
