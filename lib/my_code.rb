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
      if !i.is_a? Integer 
        printf i
        currentValue = i 
        printf currentValue
      end
      currentValue = yield(currentValue, i)
  end
  
  return currentValue
end