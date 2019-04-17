local holylight = 10

function onmonkey()
  local existself = exists[self:index()]
  local existl = exists[self:left():index()]
  local existc = exists[self:cross():index()]
  local existr = exists[self:right():index()]

    existself:incmk(T34.new("1y"), 120)
    existl:incmk(T34.new("1y"), -15)
    existc:incmk(T34.new("1y"), -15)
    existr:incmk(T34.new("1y"), -15)
end

function checkinit()
  if who ~= self or iter > 50 then
    return true
  end

  return init:ct(T34.new("1y")) == 2
end

function ondraw()
  local hand = game:gethand(self)
  local effas = hand:effa()
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())

  if who ~= self or hand:ismenzen() or rinshan then
    return
  end

   if holylight <= 180 then
   holylight = holylight + 10
    for _, t in ipairs(effas) do
      mount:lighta(t, holylight)
     end
  end

      if handr:ready() then 
      for _, t in ipairs(handr:effa()) do
         mount:lighta(t, -50)
         print(t, "有危險")
     end
  end

    if handc:ready() then 
      for _, t in ipairs(handc:effa()) do
         mount:lighta(t, -50)
         print(t, "有危險")
     end
  end

    if handl:ready() then 
      for _, t in ipairs(handl:effa()) do
         mount:lighta(t, -50)
         print(t, "有危險")
     end
    end
end
