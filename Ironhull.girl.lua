function ondraw()
  local hand = game:gethand(who)
  local effas = hand:effa()
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())

  if who ~= self then
    if hand:ready() then
      for _, t in ipairs(effas) do
        mount:lighta(t, -3333)
        mount:lightb(t, -3333)
      end
    else
      for _, t in ipairs(T34.all) do
        mount:lighta(t, -33)
        mount:lightb(t, -33)
      end
    end
  end
 
  if who == self then
    for _, t in ipairs(effas) do
      mount:lighta(t, 3)
      mount:lightb(t, 3)
    end
    if handr:ready() then
      for _, t in ipairs(handr:effa()) do
        print(t, "有危險")
       end
    end
    if handc:ready() then
      for _, t in ipairs(handc:effa()) do
        print(t, "有危險")
       end
    end
    if handl:ready() then
      for _, t in ipairs(handl:effa()) do
        print(t, "有危險")
      end
   end
  end
end
