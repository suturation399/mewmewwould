function checkinit()
  chume = 0
  local selfwind = game:getselfwind(self)

  if who ~= self or iter > 70 then
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
  local mkst = (steps - 2) * 30 - 10

  if who ~= self or rinshan then
    return
  end

  if who == self and steps >= 1 and chume <=7 then
    chume = chume + 1
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, mkst)
    end
  end

  if who == self and steps >= 1 and chume >=8 then
    chume = chume + 1
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, 1000)
     end
  end

  if who == self and steps == 0 then
    chume = chume + 1
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, 0)
     end
  end
end
