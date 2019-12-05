require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nil
  count = 0
  while count < nds.size do
    director = nds[count]
    result[director[:name]] = gross_for_director(director)
    count += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  count = 0
  total = 0
  while count < director_data[:movies].length do
  total += director_data[:movies][count][:worldwide_gross]
  count += 1
  end
total
end