decree = 0
failurer = 0
failurec = 0
failurel = 0
power = 0
pressure = 0
catastrophe = 0

function onmonkey()
  ancientr = failurer + 30
  ancientc = failurer + 30
  ancientl = failurel + 30
  power = 30
  
  if catastrophe == 1 then
    for i = 1, 9 do
      exists[self:index()]:incmk(T34.new(i .. "p"), 200)
    end
  end
end
     
function checkinit()
  local ok = 1
  
  if who ~= self then
    return true
  end

  if catastrophe == 1 then
    return init:closed():ct("p") == 13
  else
    
end

function ondraw()
  
