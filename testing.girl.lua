a = 1103515245
c = 12345
m = 2 ^ 32 - 1
seed = 1

function random()
  seed = (a * seed + c) % m
  return seed
end

function onmonkey()
  status = random() % 6
  local sw = game:getselfwind(who)
  local rw = game:getroundwind()
  local exist = exists[self:index()]
  
  if status == 0 then
    exist:incmk(T34.new("1y"), 144)
  end
  
  if status == 1 then
    exist:incmk(T34.new("2y"), 144)
  end

  if status == 2 then
    exist:incmk(T34.new("3y"), 144)
  end

  if status == 3 then
    if sw == 1 then
      exist:incmk(T34.new("1f"), 144)
    end
    if sw == 2 then
      exist:incmk(T34.new("2f"), 144)
    end
    if sw == 3 then
      exist:incmk(T34.new("3f"), 144)
    end
    if sw == 4 then
      exist:incmk(T34.new("4f"), 144)
    end
  end
  
  if status == 4 then
    if rw == 1 then
      exist:incmk(T34.new("1f"), 144)
    end
    if rw == 2 then
      exist:incmk(T34.new("2f"), 144)
    end
    if rw >= 3 then
      exist:incmk(T34.new("3f"), 144)
    end
  end
  
  if status == 5 then
    for i = 2, 8 do
      exist:incmk(T34.new(i .. "p"), 144)
      exist:incmk(T34.new(i .. "s"), 144)
      exist:incmk(T34.new(i .. "m"), 144)
    end
  end
end

function checkinit()
  junme = 0
  local sw = game:getselfwind(who)
  local rw = game:getroundwind()
  
  if who ~= self or iter > 88 then
    return true
  end

  if status == 0 then
    return init:step4() >= 3 and init:step4() <= 4 and init:ct(T34.new("1y")) == 2
  end

  if status == 1 then
    return init:step4() >= 3 and init:step4() <= 4 and init:ct(T34.new("2y")) == 2
  end

  if status == 2 then
    return init:step4() >= 3 and init:step4() <= 4 and init:ct(T34.new("3y")) == 2
  end

  if status == 3 then
    if sw == 1 then
      return init:step4() >= 3 and init:step4() <= 4 and init:ct(T34.new("1f")) == 2
    end
    if sw == 2 then
      return init:step4() >= 3 and init:step4() <= 4 and init:ct(T34.new("2f")) == 2
    end
    if sw == 3 then
      return init:step4() >= 3 and init:step4() <= 4 and init:ct(T34.new("3f")) == 2
    end
    if sw == 4 then
      return init:step4() >= 3 and init:step4() <= 4 and init:ct(T34.new("4f")) == 2
    end
  end

  if status == 4 then
    if rw == 1 then
      return init:step4() >= 3 and init:step4() <= 4 and init:ct(T34.new("1f")) == 2
    end
    if rw == 2 then
      return init:step4() >= 3 and init:step4() <= 4 and init:ct(T34.new("2f")) == 2
    end
    if rw == 3 then
      return init:step4() >= 3 and init:step4() <= 4 and init:ct(T34.new("3f")) == 2
    end
  end

  if status == 5 then
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  return ny <= 2
  end
end

function ondraw()
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local junmk = junme * 4

  for _, t in ipairs(drids) do
    nd = hands:ctaka5() + hands:ct(t:dora())
  end

  local dormk = ((nd - 2) * -44) - 14
  
  if who ~= self or rinshan then
    return
  end

  if who == self then
    junme = junme + 1
    if steps >= 1 then
      mount:lighta(T37.new("0p"), dormk)
      mount:lighta(T37.new("0s"), dormk)
      mount:lighta(T37.new("0m"), dormk)
      for _, t in ipairs(drids) do
        mount:lighta(t:dora(), dormk)
      end
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junmk)
      end
    else
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, 4)
      end
    end
  end
end
