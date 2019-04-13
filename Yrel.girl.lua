local holylight = 5

function onmonkey()
  local existself = exists[self:index()]
  local existl = exists[self:left():index()]
  local existc = exists[self:cross():index()]
  local existr = exists[self:right():index()]

    existself:incmk(T34.new("1y"), 420)
    existl:incmk(T34.new("1y"), -30)
    existc:incmk(T34.new("1y"), -30)
    existr:incmk(T34.new("1y"), -30)
end

function checkinit()
  if who ~= self or iter > 99 then
    return true
  end

  return init:ct(T34.new("1y")) == 3
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

  mount:lighta(T34.new("1y"), -100)

   if holylight <= 90 then
   holylight = holylight + 5
    for _, t in ipairs(effas) do
      mount:lighta(t, holylight)
     end
  end
      if handr:ready() then 
      print("有危險")
      for _, t in ipairs(handr:effa()) do
         print(t)
     end
  end

    if handc:ready() then 
      print("有危險")
      for _, t in ipairs(handc:effa()) do
         print(t)
     end
  end

    if handl:ready() then 
      print("有危險")
      for _, t in ipairs(handl:effa()) do
         print(t)
     end
    end
end
