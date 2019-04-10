function onmonkey()
  local exist = exists[self:index()]
  exist:incmk(T34.new("1m"), 100)
  exist:incmk(T34.new("9m"), 100)
  exist:incmk(T34.new("1p"), 100)
  exist:incmk(T34.new("9p"), 100)
  exist:incmk(T34.new("1s"), 100)
  exist:incmk(T34.new("9s"), 100)
  exist:incmk(T34.new("1f"), 100)
  exist:incmk(T34.new("2f"), 100)
  exist:incmk(T34.new("3f"), 100)
  exist:incmk(T34.new("4f"), 100)
  exist:incmk(T34.new("1y"), 100)
  exist:incmk(T34.new("2y"), 100)
  exist:incmk(T34.new("3y"), 100)
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

  if rinshan then
    return
  end

  if who == self then
  mount:lighta(T34.new("1m"), 300)
  mount:lighta(T34.new("9m"), 300)
  mount:lighta(T34.new("1p"), 300)
  mount:lighta(T34.new("9p"), 300)
  mount:lighta(T34.new("1s"), 300)
  mount:lighta(T34.new("9s"), 300)
  mount:lighta(T34.new("1f"), 300)
  mount:lighta(T34.new("2f"), 300)
  mount:lighta(T34.new("3f"), 300)
  mount:lighta(T34.new("4f"), 300)
  mount:lighta(T34.new("1y"), 300)
  mount:lighta(T34.new("2y"), 300)
  mount:lighta(T34.new("3y"), 300)
  for _, t in ipairs(effas) do
    mount:lighta(t, 150)
    end
  end
end
