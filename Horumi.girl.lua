doge = 0
sp = 54

function ondice()
  local extra = game:getextraround()

  if extra == 0 then
    sp = 33
  end
  if extra == 1 then
    sp = 15
  end
  if extra >= 2 then
    sp = 9
  end
  
  doge = rand:gen(sp)
end

function onmonkey()
  status = doge
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local exist = exists[self:index()]
  
  if status <= 1 then
    exist:incmk(T34.new("1y"), 144)
    exist:incmk(T34.new("2y"), -15)
    exist:incmk(T34.new("3y"), -15)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -15)
    end
  end
  
  if status == 2 then
    exist:incmk(T34.new("2y"), 144)
    exist:incmk(T34.new("1y"), -15)
    exist:incmk(T34.new("3y"), -15)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -15)
    end
  end

  if status == 3 then
    exist:incmk(T34.new("3y"), 144)
    exist:incmk(T34.new("1y"), -15)
    exist:incmk(T34.new("2y"), -15)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -15)
    end
  end

  if status == 4 then
    if sw == 1 then
      exist:incmk(T34.new("1f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if sw == 2 then
      exist:incmk(T34.new("2f"), 144)
      exist:incmk(T34.new("1f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if sw == 3 then
      exist:incmk(T34.new("3f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("1f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if sw == 4 then
      exist:incmk(T34.new("4f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("1f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
  end
  
  if status == 5 then
    if rw == 1 then
      exist:incmk(T34.new("1f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if rw == 2 then
      exist:incmk(T34.new("2f"), 144)
      exist:incmk(T34.new("1f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if rw >= 3 then
      exist:incmk(T34.new("3f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("1f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
  end
  
  if status >= 6 then
    for i = 2, 8 do
      exist:incmk(T34.new(i .. "p"), 45)
      exist:incmk(T34.new(i .. "s"), 45)
      exist:incmk(T34.new(i .. "m"), 45)
    end
  end
end

function checkinit()
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  
  if who ~= self or iter > 87 then
    return true
  end

  if status <= 1 then
    return init:step4() <= 4 and init:step7() == 4 and init:ct(T34.new("1y")) == 2
  end

  if status == 2 then
    return init:step4() <= 4 and init:step7() == 4 and init:ct(T34.new("2y")) == 2
  end

  if status == 3 then
    return init:step4() <= 4 and init:step7() == 4 and init:ct(T34.new("3y")) == 2
  end

  if status == 4 then
    if sw == 1 then
      return init:step4() <= 4 and init:step7() == 4 and init:ct(T34.new("1f")) == 2
    end
    if sw == 2 then
      return init:step4() <= 4 and init:step7() == 4 and init:ct(T34.new("2f")) == 2
    end
    if sw == 3 then
      return init:step4() <= 4 and init:step7() == 4 and init:ct(T34.new("3f")) == 2
    end
    if sw == 4 then
      return init:step4() <= 4 and init:step7() == 4 and init:ct(T34.new("4f")) == 2
    end
  end

  if status == 5 then
    if rw == 1 then
      return init:step4() <= 4 and init:step7() == 4 and init:ct(T34.new("1f")) == 2
    end
    if rw == 2 then
      return init:step4() <= 4 and init:step7() == 4 and init:ct(T34.new("2f")) == 2
    end
    if rw == 3 then
      return init:step4() <= 4 and init:step7() == 4 and init:ct(T34.new("3f")) == 2
    end
  end

  if status >= 6 then
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  return ny <= 2 and init:step4() <= 4 and init:step7() == 5
  end
end

function ondraw()
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local steps = hands:step(self)
  local junmk = junme * 5

  for _, t in ipairs(drids) do
    nd = hands:ctaka5() + hands:ct(t:dora())
  end

  local dormk = ((nd - 2) * -45) - (4 * junme) - 24
  
  if rinshan then
    return
  end

  if who ~= self then
    local river = game:getriver(who)
    if steps >= 1 then
      for _, t in ipairs(river) do
        mount:lighta(t, 18)
      end
    else
      for _, t in ipairs(river) do
        mount:lighta(t, -24)
      end
      for _, t in ipairs(game:gethand(who):effa()) do
        mount:lighta(t, -18)
      end
      for i = 3, 7 do
        mount:lighta(T34.new(i .. "m"), 9)
        mount:lighta(T34.new(i .. "p"), 9)
        mount:lighta(T34.new(i .. "s"), 9)
      end
    end
  end
  
  if who == self then
    junme = junme + 1
    if handr:ready() then
      for _, t in ipairs(game:getriver(self:right())) do
        mount:lighta(t, 33)
      end
    end
    if handc:ready() then
      for _, t in ipairs(game:getriver(self:cross())) do
        mount:lighta(t, 33)
      end
    end
    if handl:ready() then
      for _, t in ipairs(game:getriver(self:left())) do
        mount:lighta(t, 33)
      end
    end
    if steps >= 1 then
      mount:lighta(T37.new("0p"), dormk)
      mount:lighta(T37.new("0s"), dormk)
      mount:lighta(T37.new("0m"), dormk)
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junme * -5 * 2)
      end
      for _, t in ipairs(hands:effa4()) do
        mount:lighta(t, junme * 5 * 3)
      end
    else
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, 102 - junmk)
      end
      for i = 2, 8 do
        mount:lighta(T34.new(i .. "m"), -9)
        mount:lighta(T34.new(i .. "p"), -9)
        mount:lighta(T34.new(i .. "s"), -9)
      end
      if handr:ready() then
        for _, t in ipairs(handr:effa()) do
          mount:lighta(t, -27)
        end
      end
      if handc:ready() then
        for _, t in ipairs(handc:effa()) do
          mount:lighta(t, -27)
        end
      end
      if handl:ready() then
        for _, t in ipairs(handl:effa()) do
          mount:lighta(t, -27)
        end
      end
    end
  end
end
