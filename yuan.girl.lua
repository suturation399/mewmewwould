function onmonkey()
  junme = 0
end

function ondraw()
  local hand = game:gethand(who)
  local effas = hand:effa()
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local junmk = junme * 4
  local sunmk = junme * 30

  if who ~= self or rinshan then
    return
  end
 
  if who == self then
    junme = junme + 1
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junmk)
      end

    if handr:ready() then
      for _, t in ipairs(handr:effa()) do
        mount:lighta(t, sunmk)
       end
    end

    if handc:ready() then
      for _, t in ipairs(handc:effa()) do
        mount:lighta(t, sunmk)
       end
    end

    if handl:ready() then
      for _, t in ipairs(handl:effa()) do
        mount:lighta(t, sunmk)
      end
   end
  end
end
