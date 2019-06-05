function onmonkey()
  junme = 0
end

function ondraw()
  local hand = game:gethand(who)
  local shand = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local seffas = shand:effa()
  local effas = hand:effa()
  local torment = (12 - junme) * 50
  
  if rinshan then
    return
  end

  if who == self then
    junme = junme + 1
  end
  
  if who == self:right() then
    if handr:step() == 1 then
      for _, t in ipairs(handr:effa()) do
        mount:lighta(t, torment)
      end
    end
    if handl:step() == 0 then
      for _, t in ipairs(handl:effa()) do
        mount:lighta(t, 90)
      end
    end
  end
