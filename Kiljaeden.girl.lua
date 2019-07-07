realround = 0

function onmonkey()
  realround = realround + 1
  local existself = exists[self:index()]
  local existl = exists[self:left():index()]
  local existc = exists[self:cross():index()]
  local existr = exists[self:right():index()]
  
  for _, t in ipairs(T34.all) do
    existself:incmk(t, 8888888)
    existl:incmk(t, 8888888)
    existc:incmk(t, 8888888)
    existr:incmk(t, 8888888)
  end
end

function checkinit()
  return iter > 100
end

function ondraw()
  local hand = game:gethand(who)
  local effas = hand:effa()
  
  if who ~= self then
    for _, t in ipairs(T34.all) do
      mount:lighta(t, 8888888)
      mount:lightb(t, 8888888)
    end
  end
  
  if who == self then  
    for _, t in ipairs(T34.all) do
      mount:lighta(t, 8888888)
      mount:lightb(t, 8888888)
    end  
  end
end
