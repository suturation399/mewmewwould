function onmonkey()
  local exist = exists[self:index()]
  local round = game:getround()
  local extra = game:getextraround()
  local inaka = (round + 1) * 50 + extra * 20

  if round <= 2 then
  exist:incmk(T37.new("0p"), inaka)
  exist:incmk(T37.new("0s"), inaka)
  exist:incmk(T37.new("0m"), inaka)
  end
end

function checkinit()
  local round = game:getround()

  if who == self and round <= 5 or who ~= self and round >= 4 and round <= 5 or iter > 80 then
    return true
  end

  if who ~= self and round <= 2 then
    return init:step() >= round + 4
  end

  if who ~= self and round == 3 then
    return init:step() >= 4
  end

  if who ~= self and round >= 6 then
    return init:step() <= 4
  end

  if who == self and round >= 6 then
    return init:step() <= 2
  end
end

function ondraw()
  local drids = mount:getdrids()
  local round = game:getround()
  local extra = game:getextraround()
  local hand = game:gethand(who)
  local effas = hand:effa()
  local akaa = (round + 1) * 80 + extra * 20
  local efaa = (round + 1) * -25 + extra * -10
  local doaa = (round - 2) * -25 + extra * -10
  local efab = (round - 5) * 20 + extra * 8
  local efam = (round - 5) * 50 + extra * 20

  if rinshan then
    return
  end

  if who == self and round <= 2 then
  mount:lighta(T37.new("0p"), akaa)
  mount:lighta(T37.new("0s"), akaa)
  mount:lighta(T37.new("0m"), akaa)
  for _, t in ipairs(effas) do
      mount:lighta(t, 10)
    end
  end

  if who == self and round >= 3 and round <= 6 then
  for _, t in ipairs(effas) do
      mount:lighta(t, 10)
    end
  end

  if who ~= self and round <= 2 then
    for _, t in ipairs(effas) do
      mount:lighta(t, efaa)
    end
  end

  if who ~= self and round == 3 then
    mount:lighta(T37.new("0p"), doaa)
    mount:lighta(T37.new("0s"), doaa)
    mount:lighta(T37.new("0m"), doaa)
    for _, t in ipairs(effas) do
      mount:lighta(t, doaa)
    end
    for _, t in ipairs(drids) do
      mount:lighta(t:dora(), doaa)
    end
  end

  if who ~= self and round >= 4 and round <= 5 then
    mount:lighta(T37.new("0p"), doaa)
    mount:lighta(T37.new("0s"), doaa)
    mount:lighta(T37.new("0m"), doaa)
    for _, t in ipairs(drids) do
      mount:lighta(t:dora(), doaa)
    end
  end

  if who ~= self and round == 6 then
    mount:lighta(T37.new("0p"), -25)
    mount:lighta(T37.new("0s"), -25)
    mount:lighta(T37.new("0m"), -25)
    for _, t in ipairs(drids) do
      mount:lighta(t:dora(), -25)
    end
    for _, t in ipairs(effas) do
      mount:lighta(t, efab)
    end
  end

  if who ~= self and round >= 7 then
    for _, t in ipairs(effas) do
      mount:lighta(t, efab)
    end
  end

  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())

  if who == self and round >= 6 then
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
