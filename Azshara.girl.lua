decree = 0
failurer = 0
failurec = 0
failurel = 0
pressure = 0
catastrophe = 0
junme = 0

function onmonkey()
  power = 0
  junme = 0
  
  if failurer == 1 then
    ancientr = -100
  else
    ancientr = 30
  end
  
  if failurec == 1 then
    ancientc = -100
  else
    ancientc = 30
  end
  
    if failurel == 1 then
    ancientl = -100
  else
    ancientl = 30
  end
  
  if catastrophe == 1 then
    for i = 1, 9 do
      exists[self:index()]:incmk(T34.new(i .. "p"), 200)
    end
  end
end
     
function checkinit()
  if who ~= self then
    if pressure ~= 0 then
      return init:step() >= pressure + 3
    else
      return true
    end
  end

  if catastrophe == 1 then
    return init:closed():ct("p") == 13
  else
    return true
  end
end

function ondraw()
  local riverr = game:getriver(self:right())
  local riverc = game:getriver(self:cross())
  local riverl = game:getriver(self:left())
  local hands = game:gethand(self)
  
  if who ~= self or rinshan then
    return
  end
  
  if who == self then
    junme = junme + 1
    
