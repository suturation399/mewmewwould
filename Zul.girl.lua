realround = 0

function onmonkey()
  round = round + 1
end

function ondraw()
  local extra = game:getextraround()
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local eaa = realround * 15 

  if who ~= self or rinshan then
    return
  end

  if who == self and hands:ismenzen() then
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, eaa)
    end
      if handr:step() <= 1 then 
      for _, t in ipairs(handr:effa()) do
         print("下家向聽數", handr:step(),"有效牌", t)
     end
  end

      if handc:step() <= 1 then 
      for _, t in ipairs(handc:effa()) do
         print("對家向聽數", handc:step(),"有效牌", t)
     end
  end

      if handl:step() <= 1 then 
      for _, t in ipairs(handl:effa()) do
         print("上家向聽數", handl:step(),"有效牌", t)
     end
  end
end

   for _, t in ipairs(hands:effa()) do
      mount:lighta(t, -10)
  end
end
