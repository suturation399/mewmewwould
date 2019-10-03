function onmonkey()
  junme = 0
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
        mount:lighta(t, junme * -14)
      end
    else
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * 14)
      end
    end
  end

  if who == self then
    junme = junme + 1
    if hand:step4() <= hand:step7() and hand:step4() <= hand:step13() then
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * 14)
      end
    else
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * 14)
      end
      for _, t in ipairs(hand:effa4()) do
        mount:lighta(t, junme * -14)
      end
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
