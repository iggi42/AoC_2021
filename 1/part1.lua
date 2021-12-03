fh,err = io.open("input.txt")

if err then print("oooooops"); return; end

result = 0

n0,n1 = nil
while true do
  line = fh:read()
  if line == nil then break end
  n0 = n1
  n1 = tonumber(line)
  if not(n0 == nil) and n1 > n0 then
    result = result + 1
  end
end

print("result: ", result)
