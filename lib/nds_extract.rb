$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  gross = 0 
  row index = 0 
  while row_index < director_data.length 
  do 
    column_index = 0 
    while column_index < director_data[row_index].length do 
      inner_len = director_data[row_index][column_index].length
      inner_index = 0 
      while inner_index < inner_len do 
        gross += director_data[row_index][column_index][inner_index][:worldwide_grosses]
        inner_index += 1 
      end
      column_index += 1 
    end
    row_index += 1

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
