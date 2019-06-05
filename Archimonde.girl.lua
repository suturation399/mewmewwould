function onmonkey()
  junme = 0
end

function ondraw()
  local drids = mount:getdrids()
  local hand = game:gethand(who)
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local torment = (12 - junme) * -44

  for _, t in ipairs(drids) do
    nd = hand:ctaka5() + hand:ct(t:dora())
  end
  
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
        mount:lighta(t, 88)
      end
    end
    if hands:step() == 0 then
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, nd * 44)
      end
    end
  end
  
  if who == self:cross() then
    if handc:step() == 1 then
      for _, t in ipairs(handc:effa()) do
        mount:lighta(t, torment)
      end
    end
    if handr:step() == 0 then
      for _, t in ipairs(handr:effa()) do
        mount:lighta(t, 88)
      end
    end
    if hands:step() == 0 then
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, nd * 44)
      end
    end
  end

  if who == self:left() then
    if handl:step() == 1 then
      for _, t in ipairs(handl:effa()) do
        mount:lighta(t, torment)
      end
    end
    if handc:step() == 0 then
      for _, t in ipairs(handc:effa()) do
        mount:lighta(t, 88)
      end
    end
    if hands:step() == 0 then
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, nd * 44)
      end
    end
  end
end
