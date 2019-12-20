function onmonkey()
  junme = 0
end

function ondraw()
  local hand = game:gethand(who)
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())

  if rinshan then
    return
  end
  
  if who ~= self then
    if handr:ready() then
      for _, t in ipairs(handr:effa()) do
        if mount:remaina(t) >= 1 then
          mount:lighta(t, -100000)
        end
      end
    end
    if handc:ready() then
      for _, t in ipairs(handc:effa()) do
        if mount:remaina(t) >= 1 then
          mount:lighta(t, -100000)
        end
      end
    end
    if handl:ready() then
      for _, t in ipairs(handl:effa()) do
        if mount:remaina(t) >= 1 then
          mount:lighta(t, -100000)
        end
      end
    end
  end
  
  if who == self then
    junme = junme + 1
    for _, t in ipairs(hand:effa()) do
      mount:lighta(t, junme * 5 * 2)
      mount:lightb(t, junme * 10 * 2)
    end
    if handr:ready() then
      for _, t in ipairs(handr:effa()) do
        print(t, "有危險")
        if hands:step() ~= 0 and mount:remaina(t) >= 1 then
           mount:lighta(t, 100000)
        else
          mount:lighta(t, -100)
        end
      end
    end
    if handc:ready() then
      for _, t in ipairs(handc:effa()) do
        print(t, "有危險")
        if hands:step() ~= 0 and mount:remaina(t) >= 1 then
           mount:lighta(t, 100000)
        else
          mount:lighta(t, -100)
        end
      end
    end
    if handl:ready() then
      for _, t in ipairs(handl:effa()) do
        print(t, "有危險")
        if hands:step() ~= 0 and mount:remaina(t) >= 1 then
           mount:lighta(t, 100000)
        else
          mount:lighta(t, -100)
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
