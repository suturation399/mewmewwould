function checkinit()
  chume = 0
  local selfwind = game:getselfwind(self)

  if who ~= self or iter > 4 then
    return true
  end

  if who == self and selfwind == 1 then
    return init:step() == 3
  end

  if who == self and selfwind ~= 1 then
    return init:step() >= 3 and init:step() <= 4
  end
end

function ondraw()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local chnmk = chume * 5

  if who ~= self or rinshan then
    return
  end

  if who == self and steps >= 1 then
    chume = chume + 1
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, chnmk)
    end
  end
      
  if who == self and steps == 0 then
    chume = chume + 0
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, 5)
     end
  end
end
