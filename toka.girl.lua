function onmonkey()
  junme = 0
end

function ondraw()
  local hand = game:gethand(who)
  local effas = hand:effa()
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local junmk = junme * 5

  if rinshan or (who ~= self and not hand:ready()) then
    return
  end

  junme = junme + 1
  for _, t in ipairs(hand:effa()) do
    mount:lighta(t, junmk)
  end

  if who ~= self and hand:ready() then
    for _, t in ipairs(effas) do
      mount:lighta(t, -600)
     end
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
