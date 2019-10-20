doge = 0

function ondice()
  doge = rand:gen(9)
end

function onmonkey()
  status = doge
  local existself = exists[self:index()]
  local existl = exists[self:left():index()]
  local existc = exists[self:cross():index()]
  local existr = exists[self:right():index()]
  
  if status == 5 then 
    print("深海共鳴：深淵崩解")
  end
  
  if status == 6 then 
    print("虛無共鳴：虛無之擁")
    existself:incmk(T34.new("1y"), 420)
    existl:incmk(T34.new("1y"), -30)
    existc:incmk(T34.new("1y"), -30)
    existr:incmk(T34.new("1y"), -30)
  end
  
  if status == 7 then
    print("風暴共鳴：殲滅風暴")
    for i = 1, 4 do
      existself:incmk(T34.new(i .. "f"), 30)
      existl:incmk(T34.new(i .. "f"), -90)
      existc:incmk(T34.new(i .. "f"), -90)
      existr:incmk(T34.new(i .. "f"), -90)
    end
  end
  
end

function checkinit()
  junme = 0
  
  if who ~= self or iter > 835 then
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
        mount:lighta(t, junme * 16)
      end
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * -24)
      end
    else
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * 16)
      end
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * -8)
      end
    end
  end

  if who == self then
    junme = junme + 1
    for _, t in ipairs(hand:effa()) do
      mount:lighta(t, junme * -8)
    end
    for _, t in ipairs(hand:effa4()) do
      mount:lighta(t, junme * 12)
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
