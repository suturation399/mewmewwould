function onmonkey()
  junme = 0
  local exist = exists[self:index()]
  
  for i = 2, 8 do
    exist:incmk(T34.new(i .. "p"), 45)
    exist:incmk(T34.new(i .. "s"), 45)
    exist:incmk(T34.new(i .. "m"), 45)
  end
end

function checkinit()
  if who ~= self or iter > 133 then
    return true
  end
    
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  return ny <= 3 and init:step() <= 4 and init:step7() == 5
end

function ondraw()
  local drids = mount:getdrids()
  local hand = game:gethand(self)
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local step = hand:step(self)
  local ctx = game:getformctx(self)
  
  if rinshan then
    return
  end
  
  if who ~= self then
    if ctx.riichi ~= 0 then
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junme * 5 * (6 - step))
      end
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * 5 * step)
      end
    else
      return
    end
  end
    
  if who == self then
    junme = junme + 1
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, junme * -5 * 2)
    end
    for _, t in ipairs(hands:effa4()) do
      mount:lighta(t, junme * 5 * 3)
    end
  end
end
