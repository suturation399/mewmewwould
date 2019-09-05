function checkinit()
  if who ~= self or iter > 44 then
    return true
  end
  
local inp = init:closed():ct("p")
local inm = init:closed():ct("m")
local ins = init:closed():ct("s")

  return ins >= inm and ins >= inp
end

function ondraw()
  
