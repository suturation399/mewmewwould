lv5tars = {
  "1m", "2m", "3m", "4m", "5m", "6m", "7m", "8m", "9m", "3y",
}

lv4tars = {
  "6p", "7p", "9p", "9s"
}

lv3tars = {
  "1p", "3p", "5p", "1s", "5s", "7s"
}

powers = {
  [lv5tars] = 4,
  [lv4tars] = 3,
  [lv3tars] = 2,
}

function onmonkey()
  junme = 0
  local existself = exists[self:index()]
  local existl = exists[self:left():index()]
  local existc = exists[self:cross():index()]
  local existr = exists[self:right():index()]
  
  for tars, mk in pairs(powers) do
    for _, yu in ipairs(tars) do
      existself:incmk(T34.new(yu), mk * 30)
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
  
  if who == self then
    junme = junme + 1
    if steps >= 1 then
      for _, t in ipairs(hands:effa()) do
        for _, yu in ipairs(lv5tars) do
            if t == yu then
              mount:lighta(T34.new(t), mk * junme * 4)
              mount:lighta(T34.new(yu), mk * junme)
            else
              mount:lighta(T34.new(t), junme * 4)
              mount:lighta(T34.new(yu), mk * junme)
            end
          end
        end
      end
    else
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, 120 - junme * 5)
      end
      for tars, mk in pairs(powers) do
        for _, yu in ipairs(tars) do
          mount:lighta(T34.new(yu), mk * (24 - junme))
        end
      end
    end
  end
end
