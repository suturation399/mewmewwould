doge = 0

function ondice()
  doge = rand:gen(7)
end

function checkinit()
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  ok = 0

  if who ~= self or iter > 8 then
    return true
  end
  
 return init:step() <= 4
end

function ondraw()
  status = doge
  junme = junme + 1
  status = doge
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local junmk = junme
  local ctx = game:getformctx(self)
  local mountupdown = mount:remainpii() + mount:remainrinshan()

  if rinshan then
    return
  end

  if who ~= self then
  end
  
  if who == self then
    if mountupdown % 2 == 0 then
      if status <= 1 then
        print("我在摸上層，單：萬筒，雙：索")
      end
      if status == 2 then
        print("我在摸上層，單：萬索，雙：筒")
      end
      if status == 3 then
        print("我在摸上層，單：筒，雙：萬索")
      end
      if status == 4 then
        print("我在摸上層，單：索，雙：萬筒")
      end
      if status == 5 then
        print("我在摸上層，單：萬，雙：筒索")
      end
      if status >= 6 then
        print("我在摸上層，單：筒索，雙：萬")
      end
    else
      if status <= 1 then
        print("我在摸下層，單：索，雙：萬筒")
      end
      if status == 2 then
        print("我在摸下層，單：筒，雙：萬索")
      end
      if status == 3 then
        print("我在摸下層，單：萬索，雙：筒")
      end
      if status == 4 then
        print("我在摸下層，單：萬筒，雙：索")
      end
      if status == 5 then
        print("我在摸下層，單：筒索，雙：萬")
      end
      if status >= 6 then
        print("我在摸下層，單：萬，雙：筒索")
      end
    end
    if steps >= 1 then
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junmk)
      end
    else
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, 96 - junmk)
      end
    end
  end
  
  suzuki(mount, game, who)
end

function suzuki (mount, game, who)
  status = doge
  local mountupdown = mount:remainpii() + mount:remainrinshan()

  if mountupdown % 2 == 0 then
    if status <= 1 then
      for i = 1, 9 do
        if i % 2 == 0 then
          mount:lighta(T34.new(i .. "m"), -240)
          mount:lighta(T34.new(i .. "p"), -240)
          mount:lighta(T34.new(i .. "s"), 4)
        else
          mount:lighta(T34.new(i .. "m"), 4)
          mount:lighta(T34.new(i .. "p"), 4)
          mount:lighta(T34.new(i .. "s"), -240)
        end
      end
    end
    if status == 2 then
      for i = 1, 9 do
        if i % 2 == 0 then
          mount:lighta(T34.new(i .. "m"), -240)
           mount:lighta(T34.new(i .. "p"), 4)
           mount:lighta(T34.new(i .. "s"), -240)
        else
          mount:lighta(T34.new(i .. "m"), 4)
          mount:lighta(T34.new(i .. "p"), -240)
          mount:lighta(T34.new(i .. "s"), 4)
        end
      end
    end
    if status == 3 then
      for i = 1, 9 do
        if i % 2 == 0 then
          mount:lighta(T34.new(i .. "m"), 4)
          mount:lighta(T34.new(i .. "p"), -240)
          mount:lighta(T34.new(i .. "s"), 4)
        else
          mount:lighta(T34.new(i .. "m"), -240)
          mount:lighta(T34.new(i .. "p"), 4)
          mount:lighta(T34.new(i .. "s"), -240)
        end
      end
    end
    if status == 4 then
      for i = 1, 9 do
        if i % 2 == 0 then
          mount:lighta(T34.new(i .. "m"), 4)
          mount:lighta(T34.new(i .. "p"), 4)
          mount:lighta(T34.new(i .. "s"), -240)
        else
          mount:lighta(T34.new(i .. "m"), -240)
          mount:lighta(T34.new(i .. "p"), -240)
          mount:lighta(T34.new(i .. "s"), 4)
        end
      end
    end
    if status == 5 then
      for i = 1, 9 do
        if i % 2 == 0 then
          mount:lighta(T34.new(i .. "m"), -240)
          mount:lighta(T34.new(i .. "p"), 4)
          mount:lighta(T34.new(i .. "s"), 4)
        else
          mount:lighta(T34.new(i .. "m"), 4)
          mount:lighta(T34.new(i .. "p"), -240)
          mount:lighta(T34.new(i .. "s"), -240)
        end
      end
    end
    if status >= 6 then
      for i = 1, 9 do
        if i % 2 == 0 then
          mount:lighta(T34.new(i .. "m"), 4)
          mount:lighta(T34.new(i .. "p"), -240)
          mount:lighta(T34.new(i .. "s"), -240)
        else
          mount:lighta(T34.new(i .. "m"), -240)
          mount:lighta(T34.new(i .. "p"), 4)
          mount:lighta(T34.new(i .. "s"), 4)
        end
      end
    end
  else
    if status <= 1 then
      for i = 1, 9 do
        if i % 2 == 0 then
          mount:lighta(T34.new(i .. "m"), 4)
          mount:lighta(T34.new(i .. "p"), 4)
          mount:lighta(T34.new(i .. "s"), -240)
        else
          mount:lighta(T34.new(i .. "m"), -240)
          mount:lighta(T34.new(i .. "p"), -240)
          mount:lighta(T34.new(i .. "s"), 4)
        end
      end
    end
    if status == 2 then
      for i = 1, 9 do
        if i % 2 == 0 then
          mount:lighta(T34.new(i .. "m"), 4)
          mount:lighta(T34.new(i .. "p"), -240)
          mount:lighta(T34.new(i .. "s"), 4)
        else
          mount:lighta(T34.new(i .. "m"), -240)
          mount:lighta(T34.new(i .. "p"), 4)
          mount:lighta(T34.new(i .. "s"), -240)
        end
      end
    end
    if status == 3 then
      for i = 1, 9 do
        if i % 2 == 0 then
          mount:lighta(T34.new(i .. "m"), -240)
          mount:lighta(T34.new(i .. "p"), 4)
          mount:lighta(T34.new(i .. "s"), -240)
        else
          mount:lighta(T34.new(i .. "m"), 4)
          mount:lighta(T34.new(i .. "p"), -240)
          mount:lighta(T34.new(i .. "s"), 4)
        end
      end
    end
    if status == 4 then
      for i = 1, 9 do
        if i % 2 == 0 then
          mount:lighta(T34.new(i .. "m"), -240)
          mount:lighta(T34.new(i .. "p"), -240)
          mount:lighta(T34.new(i .. "s"), 4)
        else
          mount:lighta(T34.new(i .. "m"), 4)
          mount:lighta(T34.new(i .. "p"), 4)
          mount:lighta(T34.new(i .. "s"), -240)
        end
      end
    end
    if status == 5 then
      for i = 1, 9 do
        if i % 2 == 0 then
          mount:lighta(T34.new(i .. "m"), 4)
          mount:lighta(T34.new(i .. "p"), -240)
          mount:lighta(T34.new(i .. "s"), -240)
        else
          mount:lighta(T34.new(i .. "m"), -240)
          mount:lighta(T34.new(i .. "p"), 4)
          mount:lighta(T34.new(i .. "s"), 4)
        end
      end
    end
    if status >= 6 then
      for i = 1, 9 do
        if i % 2 == 0 then
          mount:lighta(T34.new(i .. "m"), -240)
          mount:lighta(T34.new(i .. "p"), 4)
          mount:lighta(T34.new(i .. "s"), 4)
        else
          mount:lighta(T34.new(i .. "m"), 4)
          mount:lighta(T34.new(i .. "p"), -240)
          mount:lighta(T34.new(i .. "s"), -240)
        end
      end
    end
  end
end
