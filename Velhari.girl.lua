function onmonkey()
  local exist = exists[self:index()]
  local round = game:getround()
  local inaka = (round + 1) * 10

  if round <= 3 then
  exist:incmk(T37.new("0p"), inaka)
  exist:incmk(T37.new("0s"), inaka)
  exist:incmk(T37.new("0m"), inaka)
  end
end

function checkinit()
  local round = game:getround()

  if who == self and round <= 3 or iter > 80 then
    return true
  end

  if who ~= self and round <= 2 then
    return init:step() >= round + 4
  end

  if who ~= self and round == 3 then
    return init:step() >= 6
  end

  if who ~= self and round == 4 then
    return init:step() >= 5
  end

  if who ~= self and round >= 5 then
    return init:step() <= 4
  end

  if who == self and round >= 4 then
    return init:step() <= 2
  end
end

function ondraw()
  local round = game:getround()
  local hand = game:gethand(who)
  local effas = hand:effa()
  local akaa = (round + 1) * 150
  local efaa = (round + 1) * -25
  local efab = (round - 5) * 20
  local efam = (round - 3) * 50

  if rinshan then
    return
  end

  if who == self and round <= 3 then
  mount:lighta(T37.new("0p"), akaa)
  mount:lighta(T37.new("0s"), akaa)
  mount:lighta(T37.new("0m"), akaa)
  for _, t in ipairs(effas) do
      mount:lighta(t, 20)
    end
  end

  if who ~= self and round <= 3 then
    for _, t in ipairs(effas) do
      mount:lighta(t, efaa)
    end
  end

  if who ~= self and round >= 4 then
    for _, t in ipairs(effas) do
      mount:lighta(t, efab)
    end
  end

  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())

  if who == self and round >= 4 then
    for _, t in ipairs(effas) do
      mount:lighta(t, efam)
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
end
