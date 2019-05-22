void = 50

function onmonkey()
  local exist0 = exists[self:left():index()]
  local exist1 = exists[self:right():index()]
  local exist2 = exists[self:cross():index()]
  local exist3 = exists[self:index()]
  
  for _, t in ipairs(T34.all) do
    exist0:incmk(t, 2500)
    exist1:incmk(t, 2500)
    exist2:incmk(t, 2500)
    exist3:incmk(t, 2500)
  end
end

function ondraw()
  local hand = game:gethand(who)
  local effas = hand:effa()
  
  if who ~= self then
    for _, t in ipairs(T34.all) do
      mount:lighta(t, 2500)
      mount:lightb(t, 2500)
    end
  end
  
  if who == self then  
    if void >= 100 then
      void = void - 99
      for _, t in ipairs(effas) do
        mount:lighta(t, 999)
      end
    else
      void = void + 7
      for _, t in ipairs(T34.all) do
        mount:lighta(t, 2500)
        mount:lightb(t, 2500)
      end
    end  
    print("瘋狂能量", void)
  end
end
