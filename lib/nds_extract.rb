require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  row_index=0
  direc_total = 0
  while row_index < nds.length do
    direc_total = gross_for_director(nds[row_index])
    row_index+=1
    result[nds[row_index][:name]] = direc_total
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  col_index = 0
  col_length = director_data[:movies].length
  director_total = 0
  while col_index < col_length do
    director_total += director_data[:movies][col_index][:worldwide_gross]
    col_index+=1
  end
  return director_total
end
