def map(arr)
  new = []
  for i in arr do
    new.push(yield(i)) 
  end
  
  return new
end

def reduce(arr, acc = 0)
  
  for i in arr do
    if i.is_a? Integer
      puts yield(acc, i)
    else 
      puts yield(acc, i)
    end
  end
  
end