lv5tars = {
  "2s", "3s", "4s", "1f", "2f", "3f", "4f", "1y", "2y"
}

lv4tars = {
  "2p", "4p", "8p", "9s", "6s", "8s"
}

powers = {
  [lv5tars] = -3,
  [lv4tars] = -2,
}

function onmonkey()
  junme = 0
  local existself = exists[self:index()]
  
  for tars, mk in pairs(powers) do
    for _, t in ipairs(tars) do
      exists[self:index()]:incmk(T34.new(t), mk * 5)
    end
  end
  existself:incmk(T37.new("0p"), 90)
  existself:incmk(T37.new("0s"), 90)
  existself:incmk(T37.new("0m"), 90)
end

function ondraw()
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local ctx = game:getformctx(self)
  
  if who ~= self or rinshan then
    return
  end
  
  junme = junme + 1
  for tars, mk in pairs(powers) do
    for _, t in ipairs(tars) do
      mount:lighta(T34.new(t), mk * junme)
    end
  end
  mount:lighta(T37.new("0p"), 9 * junme)
  mount:lighta(T37.new("0s"), 9 * junme)
  mount:lighta(T37.new("0m"), 9 * junme)
  if steps >= 1 then
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, junme * 5)
    end
  else
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, 126 - (junme * 5))
    end
  end
end
