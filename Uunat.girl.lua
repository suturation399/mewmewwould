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
  
  if who ~= self or iter > 222 then
    return true
  end
  
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  return ny <= 4 and init:step7() == 5
end

function ondraw()
  local hand = game:gethand(who)
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local effas = hand:effa()
  
  if who ~= self then
    if hand:step4() <= hand:step7() and hand:step4() <= hand:step13() then
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * 14)
      end
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * -21)
      end
    else
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * 14)
      end
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * -7)
      end
    end
  end

  if who == self then
    junme = junme + 1
    for _, t in ipairs(hand:effa()) do
      mount:lighta(t, junme * -14)
    end
    for _, t in ipairs(hand:effa4()) do
      mount:lighta(t, junme * 21)
    end
    if handr:step() == 0 then 
      for _, t in ipairs(handr:effa()) do
        print("下家聽牌請注意", t)
      end
    else
      print("下家向聽數", handr:step())
    end
    if handc:step() == 0 then 
      for _, t in ipairs(handc:effa()) do
        print("對家聽牌請注意", t)
      end
    else
      print("對家向聽數", handc:step())
    end
    if handl:step() == 0 then 
      for _, t in ipairs(handl:effa()) do
        print("上家聽牌請注意", t)
      end
    else
      print("上家向聽數", handl:step())
    end
  end
end
