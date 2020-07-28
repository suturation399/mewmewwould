doge = 0
sp = 90

function ondice()
  local extra = game:getextraround()

  if extra == 0 then
    sp = 90
  end
  if extra == 1 then
    sp = 60
  end
  if extra >= 2 then
    sp = 30
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
    return ny <= 3 and init:step4() <= 4 and init:step7() == 5
  end
end

function ondraw()
  local hands = game:gethand(self)
  local effas = hands:effa()
  local steps = hands:step(self)
  local hand = game:gethand(who)
  local ctx = game:getformctx(self)
  local rule = game:getrule()
  local drids = mount:getdrids()
  local junmk = 67 - junme * 3
  local omk = junme * 4 * hand:step()
  local amk = junme * 4 * (6 - hand:step())
  
  
  if rinshan or ctx.ippatsu then
    return 
  end
  
  if who == self then
    if hands:step() == ctx.riichi then
      for _, t in ipairs(hands:effa4()) do
        mount:lighta(t, -5)
      end
    else
      for _, t in ipairs(hands:effa4()) do
        mount:lighta(t, junmk)
      end
    end
  end
  
  if who ~= self then
    if ctx.riichi ~= 0 then
      for _, t in ipairs(effas) do
        local ntenpai = mount:remaina(t)
        if ntenpai > 1 then
          mount:lighta(t, amk)
        end
      end
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, omk)
      end
    end
  end
end
