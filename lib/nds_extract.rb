$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0
  gross = 0
  while movie_index < director_data[:movies].length
    gross += director_data[:movies][movie_index][:worldwide_gross]
  end
  gross
end

def directors_totals(nds)
  result = {}
  director_index = 0
  
  while director_index < nds.length
    director = nds[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end
