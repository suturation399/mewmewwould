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
  
  if iter > 99 then
    return true
  end

  if who ~= self then
    return true
  end
  
  if status <= 1 then
    return init:step4() <= 3 and init:step7() == 4 and init:ct(T34.new("1y")) == 2
  end

  if status == 2 then
    return init:step4() <= 3 and init:step7() == 4 and init:ct(T34.new("2y")) == 2
  end

  if status == 3 then
    return init:step4() <= 3 and init:step7() == 4 and init:ct(T34.new("3y")) == 2
  end

  if status == 4 then
    if sw == 1 then
      return init:step4() <= 3 and init:step7() == 4 and init:ct(T34.new("1f")) == 2
    end
    if sw == 2 then
      return init:step4() <= 3 and init:step7() == 4 and init:ct(T34.new("2f")) == 2
    end
    if sw == 3 then
      return init:step4() <= 3 and init:step7() == 4 and init:ct(T34.new("3f")) == 2
    end
    if sw == 4 then
      return init:step4() <= 3 and init:step7() == 4 and init:ct(T34.new("4f")) == 2
    end
  end

  if status == 5 then
    if rw == 1 then
      return init:step4() <= 3 and init:step7() == 4 and init:ct(T34.new("1f")) == 2
    end
    if rw == 2 then
      return init:step4() <= 3 and init:step7() == 4 and init:ct(T34.new("2f")) == 2
    end
    if rw == 3 then
      return init:step4() <= 3 and init:step7() == 4 and init:ct(T34.new("3f")) == 2
    end
  end

  if status >= 6 then
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  return ny <= 2 and init:step4() <= 4 and init:step7() == 5
  end
end

function ondraw()
  local hands = game:gethand(self)
  local hand = game:gethand()
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local effas = hands:effa()
  local steps = hands:step(self)
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  
  if who == self then
    for _, t in ipairs(effas) do
      local neffas = mount:remaina(t)
      mount:lighta(t, (neffas * -1 + 8) * 20)
    end
    if (mount:remainpii() <= 1 or rinshan) and hands:step() <= 1 then
      for _, t in ipairs(effas) do
        mount:lighta(t, 307)
      end
    end
    if hands:step() < 1 then
      if handr:step() < 1 then
        for _, t in ipairs(handr:effa()) do
          mount:lighta(t, -30)
        end
      end
      if handc:step() < 1 then
        for _, t in ipairs(handc:effa()) do
          mount:lighta(t, -30)
        end
      end
      if handl:step() < 1 then
        for _, t in ipairs(handl:effa()) do
          mount:lighta(t, -30)
        end
      end
    end
    if no hands:ismenzen() then
      if hands:ct(T34.new("1y")) > 0 and hands:ct(T34.new("1y")) < 3 and mount:remaina(T34.new("1y")) then
        mount:lighta(T34.new("1y"), 307)
      end
      if hands:ct(T34.new("2y")) > 0 and hands:ct(T34.new("2y")) < 3 and mount:remaina(T34.new("2y")) then
        mount:lighta(T34.new("2y"), 307)
      end
      if hands:ct(T34.new("3y")) > 0 and hands:ct(T34.new("3y")) < 3 and mount:remaina(T34.new("3y")) then
        mount:lighta(T34.new("3y"), 307)
      end
      if hands:ct(T34.new("3y")) > 0 and hands:ct(T34.new("3y")) < 3 and mount:remaina(T34.new("3y")) then
        mount:lighta(T34.new("3y"), 307)
      end
      if rw ==  1 and hands:ct(T34.new("1f")) > 0 and hands:ct(T34.new("1f")) < 3 and mount:remaina(T34.new("1f")) then
        mount:lighta(T34.new("1f"), 307)
      end
      if rw == 2 and hands:ct(T34.new("2f")) > 0 and hands:ct(T34.new("2f")) < 3 and mount:remaina(T34.new("2f")) then
        mount:lighta(T34.new("2f"), 307)
      end
      if rw == 3 and hands:ct(T34.new("3f")) > 0 and hands:ct(T34.new("3f")) < 3 and mount:remaina(T34.new("3f")) then
        mount:lighta(T34.new("3f"), 307)
      end
      if sw == 1 and hands:ct(T34.new("1f")) > 0 and hands:ct(T34.new("1f")) < 3 and mount:remaina(T34.new("1f")) then
        mount:lighta(T34.new("1f"), 307)
      end
      if sw == 2 and hands:ct(T34.new("2f")) > 0 and hands:ct(T34.new("2f")) < 3 and mount:remaina(T34.new("2f")) then
        mount:lighta(T34.new("2f"), 307)
      end
      if sw == 3 and hands:ct(T34.new("3f")) > 0 and hands:ct(T34.new("3f")) < 3 and mount:remaina(T34.new("3f")) then
        mount:lighta(T34.new("3f"), 307)
      end
      if sw == 4 and hands:ct(T34.new("4f")) > 0 and hands:ct(T34.new("4f")) < 3 and mount:remaina(T34.new("4f")) then
        mount:lighta(T34.new("4f"), 307)
      end
      mount:lighta(T34.new("1m"), -30)
      mount:lighta(T34.new("9m"), -30)
      mount:lighta(T34.new("1p"), -30)
      mount:lighta(T34.new("9p"), -30)
      mount:lighta(T34.new("1s"), -30)
      mount:lighta(T34.new("9s"), -30)
    end
  else
    if no hands:ismenzen() then
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, -15)
      end
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, 30)
      end
    end
  end
end
