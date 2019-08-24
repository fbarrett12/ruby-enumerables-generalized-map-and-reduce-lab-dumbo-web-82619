def map(arr)
  new = []
  for i in arr do
    new.push(yield(i)) 
  end
  
  return new
end

def reduce(arr, acc = 0)
  
  if arr.length == 0 
    puts acc 
  end
  
  for i in arr do
    if i.is_a? Integer
      reduce([], yield(start, i))
    else 
      puts yield(start, i)
    end
  end
  
end