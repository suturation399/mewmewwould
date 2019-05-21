blizzard = 0
ice = 30

coldtars = {
  "2p", "4p", "8p", "2s", "3s", "4s", "6s", "8s", "9m", "1f", "2f", "3f", "4f", "1y", "2y" 
}

coldpowers = {
  [coldtars] = 60
}

function onmonkey()
  junme = 0
  local exist = exists[self:index()]
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  
  if sw == 1 and rw == 1 then
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), 63)
    end
  end
  
  if sw == 1 and rw == 2 then
    exist:incmk(T34.new("1y"), 99)
  end
end

function checkinit()
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  
  if who ~= self or rw ~= 2 or iter > 50 or (rw == 2 and sw ~= 1) then
    return true
  end
  
  return init:ct(T34.new("1y")) == 3
end
  

function ondraw()
  local round = game:getround()
  local hand = game:gethand(who)
  local effas = hand:effa()
  local drids = mount:getdrids()
  
  for _, t in ipairs(drids) do
    nd = hand:ctaka5() + hand:ct(t:dora())
  end
  
  if who == self then
    if blizzard <= 119 then
      blizzard = blizzard + 6
    end
      
    if blizzard >= 119 then 
      blizzard = blizzard - 115
    end
      
    if ice <= 119 then
      ice = ice + 11
    end

    if ice >= 119 then
      ice = ice - 115
    end
    
    junme = junme + 1
    for _, t in ipairs(effas) do
      mount:lighta(t, 10)
    end
    print("暴雪能量", blizzard)
    print("冷凍能量", ice)
    print("dora量", nd)
  end
end
