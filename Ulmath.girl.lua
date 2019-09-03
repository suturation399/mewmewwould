function checkinit()
  junme = 0
  
  if who ~= self or iter > 55 then
    return true
  end
  
  return init:step7() < init:step4()
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
      for i = 1, 4 do
        exist:incmk(T34.new(i .. "f"), 55)
      end
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), 55)
      end
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, -55)
      end
    else
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, 55)
      end
    end
  end

  junme = junme + 1
  if hands:step() > handr:step() or hands:step() > handc:step() or hands:step() > handl:step() then
    for _, t in ipairs(hand:effa7()) do
      mount:lighta(t, junme * 15)
    end
  else
    for _, t in ipairs(hand:effa7()) do
      mount:lighta(t, junme * 5)
    end
  end
end
