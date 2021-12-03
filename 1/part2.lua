function input_numbers()
    fh,err = io.open("input.txt")
    if err then
      print("oooooops")
      return
    end

    return function()
      line = fh:read()
      if line == nil then
        return
      else
        return tonumber(line)
      end
    end
end

function print_array(input)
  result = ""
  for _, n in ipairs(input)
  do
    result = result .. " " .. n
  end
  print(result)
end


function sum_array(input)
  result = 0
  for _, n in ipairs(input)
  do
    result = result + n
  end
  return result
end

i = 0
sus = {nil, nil, nil}

output = 0

n0,n1 = nil
for n in input_numbers()
do
  sus[i+1] = n
  if #sus == 3 then
    n0 = n1
    n1 = sum_array(sus)
    if not(n0 == nil) and (n1 > n0) then
      output = output + 1
    end
  end
  i = (i + 1) % 3
end

print("output ", output)
