function checkinit()
  junme = 0
  
  if who == self and iter > 500 then
    return true
  end

  return init:step() >= 5
end

function ondraw()
  local hand = game:gethand(who)
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())

  if who ~= self or rinshan then
    return
  end

  if who == self then
    junme = junme + 1
    for _, t in ipairs(hand:effa()) do
      mount:lighta(t, junme * 5 * 2)
      mount:lightb(t, junme * 5 * 2)
    end
    if handr:ready() then
      for _, t in ipairs(handr:effa()) do
        print(t, "有危險")
        if mount:remaina(t) >= 1 then
          mount:loadb(t, 1)
          mount:loadb(t, 1)
        end
      end
    end
    if handc:ready() then
      for _, t in ipairs(handc:effa()) do
        print(t, "有危險")
        if mount:remaina(t) >= 1 then
          mount:loadb(t, 1)
          mount:loadb(t, 1)
        end
      end
    end
    if handl:ready() then
      for _, t in ipairs(handl:effa()) do
        print(t, "有危險")
        if mount:remaina(t) >= 1 then
          mount:loadb(t, 1)
          mount:loadb(t, 1)
        end
      end
    end
    if not hands:ready() then
      for _, t in ipairs(T34.all) do
        mount:lightb(t, 100000)
      end
    end
  end
end
