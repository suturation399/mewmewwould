function onmonkey()
  junme = 0
  tenjun = 1
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
    if not shand:ready() then
      junme = junme + 1
      if junme == 6 or junme == 12 then
        for _, t in ipairs(seffas) do
          mount:lighta(t, 33 * junme)
        end
      end
    else
      for _, t in ipairs(seffas) do
        mount:lighta(t, 13 * tenjun)
      end
      tenjun = tenjun + 1
      if handr:ready() then 
        for _, t in ipairs(handr:effa()) do
           mount:lighta(t, -40)
        end
      end
      if handc:ready() then 
        for _, t in ipairs(handc:effa()) do
           mount:lighta(t, -40)
        end
      end
      if handl:ready() then 
        for _, t in ipairs(handl:effa()) do
          mount:lighta(t, -40)
        end
      end
    end
  end
  
  if who ~= self then
    if shand:step() == 0 then
      for _, t in ipairs(effas) do
        mount:lighta(t, -13 * tenjun)
      end
    end
  end
end