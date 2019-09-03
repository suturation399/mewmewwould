doge = 0

function ondice()
  doge = rand:gen(20)
end

function onmonkey()
  status = doge
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local exist = exists[self:index()]
  
  if status == 1 then
    print("元素呼喚：洪流")
    exist:incmk(T34.new("1y"), 144)
    exist:incmk(T34.new("2y"), -14)
    exist:incmk(T34.new("3y"), -14)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -14)
    end
  end
  
  if status == 2 then
    print("元素呼喚：洪流")
    exist:incmk(T34.new("2y"), 144)
    exist:incmk(T34.new("1y"), -14)
    exist:incmk(T34.new("3y"), -14)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -14)
    end
  end

  if status == 3 then
    print("元素呼喚：洪流")
    exist:incmk(T34.new("3y"), 144)
    exist:incmk(T34.new("1y"), -14)
    exist:incmk(T34.new("2y"), -14)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -14)
    end
  end

  if status == 4 then
    print("元素呼喚：洪流")
    if sw == 1 then
      exist:incmk(T34.new("1f"), 144)
      exist:incmk(T34.new("2f"), -14)
      exist:incmk(T34.new("3f"), -14)
      exist:incmk(T34.new("4f"), -14)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -14)
      end
    end
    if sw == 2 then
      exist:incmk(T34.new("2f"), 144)
      exist:incmk(T34.new("1f"), -14)
      exist:incmk(T34.new("3f"), -14)
      exist:incmk(T34.new("4f"), -14)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -14)
      end
    end
    if sw == 3 then
      exist:incmk(T34.new("3f"), 144)
      exist:incmk(T34.new("2f"), -14)
      exist:incmk(T34.new("1f"), -14)
      exist:incmk(T34.new("4f"), -14)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -14)
      end
    end
    if sw == 4 then
      exist:incmk(T34.new("4f"), 144)
      exist:incmk(T34.new("2f"), -14)
      exist:incmk(T34.new("3f"), -14)
      exist:incmk(T34.new("1f"), -14)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -14)
      end
    end
  end
  
  if status == 5 then
    print("元素呼喚：洪流")
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
  
  if status >= 6 and status <= 10 then
    print("元素呼喚：爆裂")
  end
  
  if status >= 11 and status <= 15 then
    print("元素呼喚：土牆")
  end
  
  if status >= 16 and status <= 20 then
    print("元素呼喚：雷擊")
  end
end

function checkinit()
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  
  if who ~= self or iter > 88 then
    return true
  end

  if status == 1 then
    return init:step() <= 4 and init:ct(T34.new("1y")) == 2
  end

  if status == 2 then
    return init:step() <= 4 and init:ct(T34.new("2y")) == 2
  end

  if status == 3 then
    return init:step() <= 4 and init:ct(T34.new("3y")) == 2
  end

  if status == 4 then
    if sw == 1 then
      return init:step() <= 4 and init:ct(T34.new("1f")) == 2
    end
    if sw == 2 then
      return init:step() <= 4 and init:ct(T34.new("2f")) == 2
    end
    if sw == 3 then
      return init:step() <= 4 and init:ct(T34.new("3f")) == 2
    end
    if sw == 4 then
      return init:step() <= 4 and init:ct(T34.new("4f")) == 2
    end
  end

  if status == 5 then
    if rw == 1 then
      return init:step() <= 4 and init:ct(T34.new("1f")) == 2
    end
    if rw == 2 then
      return init:step() <= 4 and init:ct(T34.new("2f")) == 2
    end
    if rw == 3 then
      return init:step() <= 4 and init:ct(T34.new("3f")) == 2
    end
  end

  if status >= 6 then
  return true
  end
end

function ondraw()
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  
  if who ~= self or rinshan then
    return
  end
  
  if who == self then
    junme = junme + 1
    if status <= 5 then
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junme * 2)
      end
    end
    if status >= 6 and status <= 10 then
      mount:lighta(T37.new("0p"), 50)
      mount:lighta(T37.new("0s"), 50)
      mount:lighta(T37.new("0m"), 50)
      for _, t in ipairs(drids) do
        mount:lighta(t:dora(), 50)
      end
    end
    if status >= 11 and status <= 15 then
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
    if status >= 16 and status <= 20 then
      if junme <= 8 then
        for _, t in ipairs(hands:effa()) do
          mount:lighta(t, (8 - junme) * 5)
        end
      end
    end
  end
end
