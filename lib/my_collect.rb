def my_collect(array)
  i = 0
  new_array = []
  while i < array.length
    new_array << yield(array[i])
    i += 1
  end
  new_array
end  

array = ["ruby", "javascript", "python"]
my_collect(array) do |name|
  name.upcase
end