function onmonkey()
  local exist = exists[self:index()]
  
  for i = 2, 8 do
    exist:incmk(T34.new(i .. "p"), 55)
    exist:incmk(T34.new(i .. "s"), 55)
    exist:incmk(T34.new(i .. "m"), 55)
  end
end

function checkinit()
  junme = 0
  
  if who ~= self or iter > 555 then
    return true
  end
  
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  return ny <= 3 and init:step7() == 5
end

function ondraw()
  local hand = game:gethand(who)
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local effas = hand:effa()
  
  if who ~= self then
    if hand:step() <= hands:step() then
      for i = 2, 8 do
        mount:lighta(T34.new(i .. "m"), 15 * (5 - hand:step()))
        mount:lighta(T34.new(i .. "p"), 15 * (5 - hand:step()))
        mount:lighta(T34.new(i .. "s"), 15 * (5 - hand:step()))
      end
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, -55)
      end
    else
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, 55 * (hands:step() + 1))
      end
    end
  end

  if who == self then
    junme = junme + 1
    if hands:step() > handr:step() or hands:step() > handc:step() or hands:step() > handl:step() then
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * -5 * (hands:step() + 2) * (5 - handr:step()) * (5 - handc:step()) * (5 - handl:step()))
      end
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * 5 * 2 * (hands:step() + 2) * (5 - handr:step()) * (5 - handc:step()) * (5 - handl:step()))
      end
    else
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * -5)
      end
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * 5 * 2)
      end
    end
  end
end
  
