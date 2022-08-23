#!/usr/bin/env ruby
# Find the regular expression that will match 'or' cases
puts ARGV[0].scan(/^h(t|bt)n$/).join
