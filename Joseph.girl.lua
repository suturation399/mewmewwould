function onmonkey()
  junme = 0
  tenjun = 0
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
    junme = junme + 1
    if handr:ready() then 
      tenjun = tenjun + 1
      for _, t in ipairs(handr:effa()) do
         mount:lighta(t, -33)
      end
    end
    if handc:ready() then 
      for _, t in ipairs(handc:effa()) do
         mount:lighta(t, -33)
      end
    end
    if handl:ready() then 
      for _, t in ipairs(handl:effa()) do
        mount:lighta(t, -33)
      end
    end
  end
  
  if who ~= self then
    if junme == 6 or junme == 12 or junme == 18 then
      for _, t in ipairs(effas) do
        mount:lighta(t, -99 * junme)
      end
    end
    if shand:ready() then
      if hand:ready() then
        for _, t in ipairs(seffas) do
          mount:lighta(t, 33 * (18 - tenjun))
        end
        for _, t in ipairs(effas) do
          mount:lighta(t, -33 * (18 - tenjun))
        end
      else
        for _, t in ipairs(effas) do
          mount:lighta(t, 33 * (18 - tenjun))
        end
      end
    end
  end
end
