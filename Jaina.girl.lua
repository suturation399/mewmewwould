blizzard = 0
ice = 30

function onmonkey()
  junme = 0
end

function ondraw()
  local round = game:getround()
  local hand = game:gethand(who)
  local effas = hand:effa()
  local dora = form:dora(who)
  local aka = form:akadora(who)
  
  if who == self then
    junme = junme + 1
    for _, t in ipairs(effas) do
      mount:lighta(t, 10)
    end
    
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
