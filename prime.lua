local foundPrimes = {}

local primes = function (n)

  if (#foundPrimes > n) then
    return foundPrimes[n+1]
  end
  
  local current = (foundPrimes[#foundPrimes] or 1)+1;  

  while (#foundPrimes < n+1) do
    if (#foundPrimes < 1) then
      foundPrimes[#foundPrimes+1] = current
    else
      local isPrime = true
      for j = 1,#foundPrimes do
        if current % foundPrimes[j] == 0 then
          isPrime = false
          break;
        end
        if (current / foundPrimes[j] < foundPrimes[j]) then
          break;
        end
      end
      if (isPrime) then
        foundPrimes[#foundPrimes+1] = current
      end
    end
    current = current + 1
  end

  return foundPrimes[#foundPrimes]
end

local main = function ()
  
  local index = {0,1,50,999,9999}

  for i = 1,#values do
     print(primes(index[i]))
  end

end

main()
