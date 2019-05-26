coldtars = {
  "2p", "4p", "8p", "2s", "3s", "4s", "6s", "8s", "1f", "2f", "3f", "4f", "1y", "2y" 
}

function onmonkey()
  for _, t in ipairs(coldtars) do
    exists[self:left():index()]:incmk(T34.new(t), 33)
    exists[self:cross():index()]:incmk(T34.new(t), 33)
    exists[self:right():index()]:incmk(T34.new(t), 33)
  end
end

function ondraw()
  local hand = game:gethand(who)
  local shand = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local seffas = shand:effa()
  local effas = hand:effa()
  
  if rinshan then
    return
  end

  if who == self then
    if handr:ready() then 
      for _, t in ipairs(handr:effa()) do
         mount:lighta(t, -199)
      end
    end
    if handc:ready() then 
      for _, t in ipairs(handc:effa()) do
         mount:lighta(t, -199)
      end
    end
    if handl:ready() then 
      for _, t in ipairs(handl:effa()) do
        mount:lighta(t, -199)
      end
    end
  end
  
  if who ~= self then
    for _, t in ipairs(coldtars) do
      mount:lighta(T34.new(t), 333)
    end
    if shand:step() ~= 0 then
      for _, t in ipairs(effas) do
        mount:lighta(t, 333)
      end
    else
      for _, t in ipairs(seffas) do
        mount:lighta(t, 333)
      end
    end
  end
end
