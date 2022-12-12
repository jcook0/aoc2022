
function lines_from(file)
	local lines = {}
	for line in io.lines(file) do 
		lines[#lines + 1] = line
  	end
	return lines
end

local file = 'input.txt'
local lines = lines_from(file)

local mostCalories = 0
local currCalories = 0

for k, v in pairs(lines) do
	if v=='' then
		if currCalories > mostCalories then
			mostCalories = currCalories
		end
		currCalories = 0
	else 
		currCalories = currCalories + tonumber(v)
	end
end

print(mostCalories)
