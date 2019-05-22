blizzard = 0
ice = 30
southround = 0

coldtars = {
  "2p", "4p", "8p", "2s", "3s", "4s", "6s", "8s", "9m", "1f", "2f", "3f", "4f", "1y", "2y" 
}

function onmonkey()
  local exist = exists[self:index()]
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  
  if sw == 1 and rw == 1 then
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), 33)
    end
  end
  
  if sw == 1 and rw == 2 then
    exist:incmk(T34.new("1y"), 66)
  end
  
  if rw >= 2 then
    southround = southround + 1
  end
end

function checkinit()
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  
  if who ~= self or rw ~= 2 or iter > 50 or (rw == 2 and sw ~= 1) then
    return true
  end
  
  return init:ct(T34.new("1y")) >= 2
end

function ondraw()
  local round = game:getround()
  local hand = game:gethand(who)
  local effas = hand:effa()
  local drids = mount:getdrids()
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local coldh = southround * 33
  
  for _, t in ipairs(drids) do
    nd = hand:ctaka5() + hand:ct(t:dora())
  end
  
  if who == self then
    if rw == 1 and sw == 1 then
      
      if blizzard >= 119 then 
        blizzard = blizzard - 115
      else
        blizzard = blizzard + 6 * 5
      end
      
      if ice >= 119 then
        ice = ice - 115 
      else
        ice = ice + 11 * 5
      end
    end

    if not (rw == 1 and sw == 1) then   
      if blizzard >= 119 then 
        blizzard = blizzard - 115
      else
        blizzard = blizzard + 6
      end
      
      if ice >= 119 then
        ice = ice - 115
      else
        ice = ice + 11
      end
      
      for i = 1, 4 do
        mount:lighta(T34.new(i .. "f"), 33)
      end
    end
    
    if sw >= 2 then
      for _, t in ipairs(effas) do
        mount:lighta(t, ice)
      end
    end
    
    if sw <= 1 then
      for _, t in ipairs(effas) do
        mount:lighta(t, 3)
      end
    end
    
    for _, t in ipairs(coldtars) do
      mount:lighta(T34.new(t), coldh)
    end

    print("暴雪能量", blizzard)
    print("冷凍能量", ice)
  end
  
  if who ~= self then
    if rw == 1 and ice >= 100 then
      for _, t in ipairs(effas) do
        mount:lighta(t, (-3 * ice))
      end
    end
    
    if rw >= 2 then
      for _, t in ipairs(coldtars) do
        mount:lighta(T34.new(t), coldh)
      end
    end
    
    if blizzard <= 49 and nd == 0 then
      for _, t in ipairs(effas) do
        mount:lighta(t, (-3 * blizzard))
      end
    end
      
    if (blizzard >= 50 and blizzard <= 74) and nd <= 2 then
      for _, t in ipairs(effas) do
        mount:lighta(t, (-3 * blizzard))
      end
    end
    
    if (blizzard >= 75 and blizzard <= 99) and nd <= 4 then
      for _, t in ipairs(effas) do
        mount:lighta(t, (-3 * blizzard))
      end
    end
    
    if blizzard >= 100 then
      for _, t in ipairs(effas) do
        mount:lighta(t, -666)
      end
    end
  end
end
