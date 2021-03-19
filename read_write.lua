
local function writeFile(filename, n)
  
  local file = io.open(filename, 'w')
   
  for i = 1, n, 1 do
   
    io.write('Digite o ' .. tostring(i) .. 'º número: ')
    local n = io.read()
    
    file:write(n .. '\n')
    
  end
  
  print('Data saved!')  
  
  file:close()
  
end

local function readFile(filename)
  
  local file = io.open(filename, 'r')
  
  for line in file:lines() do
    print(line)
  end
end
