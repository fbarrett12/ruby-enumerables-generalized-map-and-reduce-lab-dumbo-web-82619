def map(arr)
  new = []
  for i in arr do
    new.push(yield(i)) 
  end
  
  return new
end

def reduce(arr, start = 0)
  result = 0
  for i in arr do
    if i.is_a? Integer

      puts yield(start, i)
    else 
      puts yield(start, i)
    end
  end
  
end