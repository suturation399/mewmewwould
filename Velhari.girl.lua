function checkinit()
  local roundwind = game:getroundwind()

  if who == self and roundwind == 1 or iter > 80 then
    return true
  end

  if who ~= self and roundwind == 1 then
    return init:step() >= 6
  end

  if who == self and roundwind ~= 1 then
    return init:step() <= 2
  end

  if who ~= self and roundwind ~= 1 then
    return init:step() <= 4
  end
end

function ondraw()
  local roundwind = game:getroundwind()
  local hand = game:gethand(who)
  local effas = hand:effa()

  if rinshan then
    return
  end

  if who == self and roundwind == 1 then
    for _, t in ipairs(effas) do
      mount:lighta(t, 25)
    end
  end

  if who ~= self and roundwind == 1 then
    for _, t in ipairs(effas) do
      mount:lighta(t, -50)
    end
  end

  if who == self and roundwind ~= 1 then
    for _, t in ipairs(effas) do
      mount:lighta(t, 150)
    end
  end

  if who ~= self and roundwind ~= 1 then
    for _, t in ipairs(effas) do
      mount:lighta(t, 25)
    end
  end
end
