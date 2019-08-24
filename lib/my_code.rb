def map(arr)
  new = []
  for i in arr do
    new.push(yield(i)) 
  end
  
  return new
end

def reduce(arr, acc = 0)
  currentValue = acc
  for i in arr do
      if i != Integer 
        currentValue = i
      end
      currentValue = yield(currentValue, i)
      puts currentValue
  end
  
  return currentValue
end