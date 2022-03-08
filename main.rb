# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# pp @candidates

#this part work
# id_candidate = find(10)
# puts id_candidate

qualified_result = qualified_candidates(@cadidate)
puts "here is the qualified result: #{qualified_result}"

