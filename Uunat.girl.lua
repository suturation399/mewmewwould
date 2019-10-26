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
  
  if status == 1 then 
    print("風暴共鳴：殲滅風暴")
    for i = 1, 4 do
      existself:incmk(T34.new(i .. "f"), 30)
      existl:incmk(T34.new(i .. "f"), -90)
      existc:incmk(T34.new(i .. "f"), -90)
      existr:incmk(T34.new(i .. "f"), -90)
    end
  end
  
  if status == 2 then 
    print("虛無共鳴：虛無之擁")
    existself:incmk(T34.new("1y"), 420)
    existl:incmk(T34.new("1y"), -30)
    existc:incmk(T34.new("1y"), -30)
    existr:incmk(T34.new("1y"), -30)
  end
  
  if status == 3 then
    print("深海共鳴：深淵崩解")
  end
end

function checkinit()
  junme = 0
  
  if iter > 835 then
    return true
  end
  
  if status <= 1 then 
    if who == self then
      return
    end
    if who ~= self then
      for i = 1, 4 do
        init:ct(T34.new(i .. "f")) == 0
    end
  end
  
  if status == 2 then 
    if who ~= self then
      return
    end
    if who == self then
      init:ct(T34.new("1y")) == 3
    end
  end
  
  if status >= 3 then
    return
  end
end

function ondraw()
  local hand = game:gethand(who)
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local effas = hand:effa()
  
  if who ~= self then
    if hand:step7() < hand:step4() then
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * 9)
      end
    else
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * 18)
      end
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * -9)
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
