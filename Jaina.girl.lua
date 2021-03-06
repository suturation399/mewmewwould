print("大海啊！回應我！")
blizzard = 0
ice = 30
southround = 0

coldtars = {
  "2p", "4p", "8p", "2s", "3s", "4s", "6s", "8s", "1f", "2f", "3f", "4f", "1y", "2y" 
}

function onmonkey()
  local exist = exists[self:index()]
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  
  if sw == 1 and rw == 2 then
    exist:incmk(T34.new("1y"), 66)
  end
  
  if rw >= 2 then
    southround = southround + 1
  end
  
  if southround == 1 then
    print("你們都會葬身海底！")
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
        blizzard = blizzard + 6 * 3
      end
      if ice >= 119 then
        ice = ice - 115 
      else
        ice = ice + 11 * 3
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
    end
    
    if blizzard >= 100 then
      for _, t in ipairs(T34.all) do
        mount:lighta(t, 3500)
        mount:lightb(t, 3500)
      end
    end
    
    if sw >= 2 then
      for _, t in ipairs(effas) do
        mount:lighta(t, ice)
      end
      for _, t in ipairs(coldtars) do
        mount:lighta(T34.new(t), coldh)
      end
    end

    print("暴雪能量", blizzard)
    print("冷凍能量", ice)
  end
  
  if who ~= self then
    if rw == 1 and ice >= 100 then
      for _, t in ipairs(effas) do
        mount:lighta(t, -33)
      end
    end
    
    if rw >= 2 then
      for _, t in ipairs(coldtars) do
        mount:lighta(T34.new(t), coldh)
      end
    end
    
    if blizzard <= 49 and nd == 0 then
      for _, t in ipairs(effas) do
        mount:lighta(t, (-13 * blizzard))
      end
    end
      
    if (blizzard >= 50 and blizzard <= 74) and nd <= 2 then
      for _, t in ipairs(effas) do
        mount:lighta(t, (-13 * blizzard))
      end
    end
    
    if (blizzard >= 75 and blizzard <= 99) and nd <= 4 then
      for _, t in ipairs(effas) do
        mount:lighta(t, (-13 * blizzard))
      end
    end
    
    if blizzard >= 100 then
      for _, t in ipairs(T34.all) do
        mount:lighta(t, 3500)
        mount:lightb(t, 3500)
      end
    end
  end
end
