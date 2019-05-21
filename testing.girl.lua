blizzard = 0
ice = 30

function onmonkey()
  junme = 0
end

function ondraw()
  local round = game:getround()
  local hand = game:gethand(who)
  local effas = hand:effa()
  local drids = mount:getdrids()
  
  for _, t in ipairs(drids) do
    nd = hand:ct(T37.new("0p")) + hand:ct(T37.new("0s")) + hand:ct(T37.new("0m")) + hand:ct(t:dora())
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
