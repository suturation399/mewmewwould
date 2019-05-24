void = 33

function onmonkey()
  local exist0 = exists[self:left():index()]
  local exist1 = exists[self:right():index()]
  local exist2 = exists[self:cross():index()]
  local exist3 = exists[self:index()]
  
  for _, t in ipairs(T34.all) do
    exist0:incmk(t, 3333)
    exist1:incmk(t, 3333)
    exist2:incmk(t, 3333)
    exist3:incmk(t, 3333)
  end
end

function checkinit()
  return iter > 333
end

function ondraw()
  local hand = game:gethand(who)
  local effas = hand:effa()
  
  if who ~= self then
    for _, t in ipairs(T34.all) do
      mount:lighta(t, 3333)
      mount:lightb(t, 3333)
    end
  end
  
  if who == self then  
    print("瘋狂能量", void)
    if void >= 100 then
      void = void - 99
      for _, t in ipairs(effas) do
        mount:lighta(t, 999)
      end
    else
      void = void + 7
      for _, t in ipairs(T34.all) do
        mount:lighta(t, 3333)
        mount:lightb(t, 3333)
      end
    end  
  end
end
