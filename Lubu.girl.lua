function onmonkey()
  local exist = exists[self:index()]
  exist:incmk(T34.new("1m"), 40)
  exist:incmk(T34.new("9m"), 40)
  exist:incmk(T34.new("1p"), 40)
  exist:incmk(T34.new("9p"), 40)
  exist:incmk(T34.new("1s"), 40)
  exist:incmk(T34.new("9s"), 40)
  exist:incmk(T34.new("1f"), 40)
  exist:incmk(T34.new("2f"), 40)
  exist:incmk(T34.new("3f"), 40)
  exist:incmk(T34.new("4f"), 40)
  exist:incmk(T34.new("1y"), 40)
  exist:incmk(T34.new("2y"), 40)
  exist:incmk(T34.new("3y"), 40)
end

function checkinit()
  if who ~= self or iter > 99 then
    return true
  end

  return init:step13() <= 4
end

function ondraw()
  local hand = game:gethand(self)
  local effas = hand:effa()

  if who ~= self and rinshan then
    return
  end

  if who == self then
  mount:lighta(T34.new("1m"), 250)
  mount:lighta(T34.new("9m"), 250)
  mount:lighta(T34.new("1p"), 250)
  mount:lighta(T34.new("9p"), 250)
  mount:lighta(T34.new("1s"), 250)
  mount:lighta(T34.new("9s"), 250)
  mount:lighta(T34.new("1f"), 250)
  mount:lighta(T34.new("2f"), 250)
  mount:lighta(T34.new("3f"), 250)
  mount:lighta(T34.new("4f"), 250)
  mount:lighta(T34.new("1y"), 250)
  mount:lighta(T34.new("2y"), 250)
  mount:lighta(T34.new("3y"), 250)
  for _, t in ipairs(effas) do
    mount:lighta(t, 75)
    end
  end
end
