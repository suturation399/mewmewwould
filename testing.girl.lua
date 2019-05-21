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
  local nd = hand:ct(T37.new("0p")) + hand:ct(T37.new("0s")) + hand:ct(T37.new("0m")) + hand:ct(t:dora())
  
  if who == self then
    if blizzard <= 140 then
      blizzard = blizzard + 6
    end
      
    if blizzard >= 141 then 
      blizzard = blizzard - 135
    end
      
    if ice <= 140 then
      ice = ice + 6
    end

    if ice >= 141 then
      ice = ice - 135
    end
    
    junme = junme + 1
    for _, t in ipairs(effas) do
      mount:lighta(t, 10)
    end
    print(blizzard, ice, nd)
  end
end
