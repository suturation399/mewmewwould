function onmonkey()
  junme = 1
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
        mount:lighta(t, junme * 7)
      end
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * -7)
      end
    else
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * 7)
      end
    end
  end

  if who == self then
    junme = junme + 1
    if hand:step4() <= hand:step7() and hand:step4() <= hand:step13() then
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * 7)
      end
    else
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * 7)
      end
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * -7)
      end
    end
    if handr:ready() then
      for _, t in ipairs(handr:effa()) do
        print(t, "有危險")
      end
    end
    if handc:ready() then
      for _, t in ipairs(handc:effa()) do
        print(t, "有危險")
      end
    end
    if handl:ready() then
      for _, t in ipairs(handl:effa()) do
        print(t, "有危險")
      end
    end
  end
end
