
print("亡者即將再度甦醒！")

void = 33

function onmonkey()
  local existself = exists[self:index()]
  local existl = exists[self:left():index()]
  local existc = exists[self:cross():index()]
  local existr = exists[self:right():index()]
  
  for _, t in ipairs(T34.all) do
    existself:incmk(t, 3333)
    existl:incmk(t, 3333)
    existc:incmk(t, 3333)
    existr:incmk(t, 3333)
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
