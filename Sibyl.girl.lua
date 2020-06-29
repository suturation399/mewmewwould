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
  local effas = hands:effa()
  local steps = hands:step(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local ctx = game:getformctx(self)
  local rule = game:getrule()
  local drids = mount:getdrids()
  
  if who ~= self or rinshan then
    return
  end
  
  if who == self then
    junme = junme + 1
    for _, t in ipairs(effas) do
      local neffas = mount:remaina(t)
      mount:lighta(t, junme * neffas * 4)
    end
    if steps <= 1 then
      for _, t in ipairs(effas) do
        local ntenpai = mount:remaina(t)
        print(t, "理論殘枚數", ntenpai)
      end
    end
    if junme >= 3 then
      print("下家向聽數", handr:step())
      print("對家向聽數", handc:step())
      print("上家向聽數", handl:step())
      if handr:ready() then
        for _, t in ipairs(handr:effa()) do
          local ntenpair = mount:remaina(t)
          print("危險牌", t, "摸牌前理論殘枚數", ntenpair)
          for _, t in ipairs(effas) do
            mount:lighta(t, junme * 4 + junme * 4 * ntenpair)
          end
          if steps ~= 0 then
            mount:lighta(t, 307 * ntenpair)
            mount:lightb(t, 307 * 2)
          else
            mount:lighta(t, -31)
            mount:lightb(t, -307 * 4)
          end
        end
      end
      if handc:ready() then
        for _, t in ipairs(handc:effa()) do
          local ntenpaic = mount:remaina(t)
          print("危險牌", t, "摸牌前理論殘枚數", ntenpaic)
          for _, t in ipairs(effas) do
            mount:lighta(t, junme * 4 + junme * 4 * ntenpaic)
          end
          if steps ~= 0 then
            mount:lighta(t, 307 * ntenpaic)
            mount:lightb(t, 307 * 2)
          else
            mount:lighta(t, -31)
            mount:lightb(t, -307 * 4)
          end
        end
      end
      if handl:ready() then
        for _, t in ipairs(handl:effa()) do
          local ntenpail = mount:remaina(t)
          print("危險牌為", t, "摸牌前理論殘枚數", ntenpail)
          for _, t in ipairs(effas) do
            mount:lighta(t, junme * 4 + junme * 4 * ntenpail)
          end
          if steps ~= 0 then
            mount:lighta(t, 307 * ntenpail)
            mount:lightb(t, 307 * 2)
          else
            mount:lighta(t, -31)
            mount:lightb(t, -307 * 4)
          end
        end
      end
    end
  end
end
