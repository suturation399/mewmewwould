doge = 0
sp = 6
junme = 1

function ondice()
  local extra = game:getextraround()

  if extra <= 0 then
    sp = 6
  else
    sp = 2
  end
  
  doge = rand:gen(sp)
end

function onmonkey()
  junme = 1
  status = doge
  local existself = exists[self:index()]
  local existl = exists[self:left():index()]
  local existc = exists[self:cross():index()]
  local existr = exists[self:right():index()]
  
  if status <= 2 then
    print("萬餅索都好了")
    existl:incmk(T34.new("3m"), -306)
    existc:incmk(T34.new("3m"), -306)
    existr:incmk(T34.new("3m"), -306)
    existl:incmk(T34.new("5m"), -306)
    existc:incmk(T34.new("5m"), -306)
    existr:incmk(T34.new("5m"), -306)
    existl:incmk(T34.new("7m"), -306)
    existc:incmk(T34.new("7m"), -306)
    existr:incmk(T34.new("7m"), -306)
    existl:incmk(T34.new("3p"), -306)
    existc:incmk(T34.new("3p"), -306)
    existr:incmk(T34.new("3p"), -306)
    existl:incmk(T34.new("5p"), -306)
    existc:incmk(T34.new("5p"), -306)
    existr:incmk(T34.new("5p"), -306)
    existl:incmk(T34.new("7p"), -306)
    existc:incmk(T34.new("7p"), -306)
    existr:incmk(T34.new("7p"), -306)
    existl:incmk(T34.new("3s"), -306)
    existc:incmk(T34.new("3s"), -306)
    existr:incmk(T34.new("3s"), -306)
    existl:incmk(T34.new("5s"), -306)
    existc:incmk(T34.new("5s"), -306)
    existr:incmk(T34.new("5s"), -306)
    existl:incmk(T34.new("7s"), -306)
    existc:incmk(T34.new("7s"), -306)
    existr:incmk(T34.new("7s"), -306)
  end
  
  if status == 3 then
    print("只有萬餅好了")
    existl:incmk(T34.new("3m"), -306)
    existc:incmk(T34.new("3m"), -306)
    existr:incmk(T34.new("3m"), -306)
    existl:incmk(T34.new("5m"), -306)
    existc:incmk(T34.new("5m"), -306)
    existr:incmk(T34.new("5m"), -306)
    existl:incmk(T34.new("7m"), -306)
    existc:incmk(T34.new("7m"), -306)
    existr:incmk(T34.new("7m"), -306)
    existl:incmk(T34.new("3p"), -306)
    existc:incmk(T34.new("3p"), -306)
    existr:incmk(T34.new("3p"), -306)
    existl:incmk(T34.new("5p"), -306)
    existc:incmk(T34.new("5p"), -306)
    existr:incmk(T34.new("5p"), -306)
    existl:incmk(T34.new("7p"), -306)
    existc:incmk(T34.new("7p"), -306)
    existr:incmk(T34.new("7p"), -306)
  end
  
  if status == 4 then
    print("只有餅索好了")
    existl:incmk(T34.new("3p"), -306)
    existc:incmk(T34.new("3p"), -306)
    existr:incmk(T34.new("3p"), -306)
    existl:incmk(T34.new("5p"), -306)
    existc:incmk(T34.new("5p"), -306)
    existr:incmk(T34.new("5p"), -306)
    existl:incmk(T34.new("7p"), -306)
    existc:incmk(T34.new("7p"), -306)
    existr:incmk(T34.new("7p"), -306)
    existl:incmk(T34.new("3s"), -306)
    existc:incmk(T34.new("3s"), -306)
    existr:incmk(T34.new("3s"), -306)
    existl:incmk(T34.new("5s"), -306)
    existc:incmk(T34.new("5s"), -306)
    existr:incmk(T34.new("5s"), -306)
    existl:incmk(T34.new("7s"), -306)
    existc:incmk(T34.new("7s"), -306)
    existr:incmk(T34.new("7s"), -306)
  end
  
  if status >= 5 then
    print("只有萬索好了")
    existl:incmk(T34.new("3m"), -306)
    existc:incmk(T34.new("3m"), -306)
    existr:incmk(T34.new("3m"), -306)
    existl:incmk(T34.new("5m"), -306)
    existc:incmk(T34.new("5m"), -306)
    existr:incmk(T34.new("5m"), -306)
    existl:incmk(T34.new("7m"), -306)
    existc:incmk(T34.new("7m"), -306)
    existr:incmk(T34.new("7m"), -306)
    existl:incmk(T34.new("3s"), -306)
    existc:incmk(T34.new("3s"), -306)
    existr:incmk(T34.new("3s"), -306)
    existl:incmk(T34.new("5s"), -306)
    existc:incmk(T34.new("5s"), -306)
    existr:incmk(T34.new("5s"), -306)
    existl:incmk(T34.new("7s"), -306)
    existc:incmk(T34.new("7s"), -306)
    existr:incmk(T34.new("7s"), -306)
  end
end

function checkinit()
  local n357m = init:ct(T34.new("3m")) + init:ct(T34.new("5m")) + init:ct(T34.new("7m")) 
  local n357p = init:ct(T34.new("3p")) + init:ct(T34.new("5p")) + init:ct(T34.new("7p"))
  local n357s = init:ct(T34.new("3s")) + init:ct(T34.new("5s")) + init:ct(T34.new("7s"))

  if  iter > 306 then
    return true
  end

  if who ~= self then
    if status <= 2 then
      return n357m + n357p + n357s == 0 and init:step4() < init:step7()
    end
    if status == 3 then
      return n357m + n357p == 0 and init:step4() < init:step7()
    end
    if status == 4 then
      return n357p + n357s == 0 and init:step4() < init:step7()
    end
    if status >= 5 then
      return n357m + n357s == 0 and init:step4() < init:step7()
    end
  else
    return init:step4() >= init:step7()
  end
end

function ondraw()
  status = doge
  junme = junme + 1
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local junmk = junme
  local tenmk = 96 - junmk
  local n357bmk = (-56 + junme) * 2
  local ctx = game:getformctx(self)
  local closeds = game:gethand(self):closed()

  if mount:remainpii() == 70 then
    if status <= 2 then
      mount:loadb(T37.new("3m"), 4)
      mount:loadb(T37.new("5m"), 4)
      mount:loadb(T37.new("0m"), 1)
      mount:loadb(T37.new("7m"), 4)
      mount:loadb(T37.new("3p"), 4)
      mount:loadb(T37.new("5p"), 4)
      mount:loadb(T37.new("0p"), 2)
      mount:loadb(T37.new("7p"), 4)
      mount:loadb(T37.new("3s"), 4)
      mount:loadb(T37.new("5s"), 4)
      mount:loadb(T37.new("0s"), 1)
      mount:loadb(T37.new("7s"), 4)
    end
    if status == 3 then
      mount:loadb(T37.new("3m"), 4)
      mount:loadb(T37.new("5m"), 4)
      mount:loadb(T37.new("0m"), 1)
      mount:loadb(T37.new("7m"), 4)
      mount:loadb(T37.new("3p"), 4)
      mount:loadb(T37.new("5p"), 4)
      mount:loadb(T37.new("0p"), 2)
      mount:loadb(T37.new("7p"), 4)
    end
    if status == 4 then
      mount:loadb(T37.new("3p"), 4)
      mount:loadb(T37.new("5p"), 4)
      mount:loadb(T37.new("0p"), 2)
      mount:loadb(T37.new("7p"), 4)
      mount:loadb(T37.new("3s"), 4)
      mount:loadb(T37.new("5s"), 4)
      mount:loadb(T37.new("0s"), 1)
      mount:loadb(T37.new("7s"), 4)
    end
    if status >= 5 then
      mount:loadb(T37.new("3m"), 4)
      mount:loadb(T37.new("5m"), 4)
      mount:loadb(T37.new("0m"), 1)
      mount:loadb(T37.new("7m"), 4)
      mount:loadb(T37.new("3s"), 4)
      mount:loadb(T37.new("5s"), 4)
      mount:loadb(T37.new("0s"), 1)
      mount:loadb(T37.new("7s"), 4)
    end
  end

  if rinshan then
    return
  end

  if who ~= self then
    mount:lightb(T37.new("3m"), n357bmk)
    mount:lightb(T37.new("5m"), n357bmk)
    mount:lightb(T37.new("3m"), n357bmk)
    mount:lightb(T37.new("5m"), n357bmk)
    mount:lightb(T37.new("0m"), n357bmk)
    mount:lightb(T37.new("7m"), n357bmk)
    mount:lightb(T37.new("3p"), n357bmk)
    mount:lightb(T37.new("5p"), n357bmk)
    mount:lightb(T37.new("0p"), n357bmk)
    mount:lightb(T37.new("7p"), n357bmk)
    mount:lightb(T37.new("3s"), n357bmk)
    mount:lightb(T37.new("5s"), n357bmk)
    mount:lightb(T37.new("0s"), n357bmk)
    mount:lightb(T37.new("7s"), n357bmk)
  end
  
  if who == self then
    if steps >= 1 then
      for _, t in ipairs(hands:effa()) do
        if closeds:ct(t) >= 1 then
          mount:lighta(t, junmk * 1.5)
          mount:lightb(t, junmk * 10.5)
        else
          mount:lighta(t, junmk)
          mount:lightb(t, junmk * 0.2)
        end
      end
    else
      for _, t in ipairs(hands:effa()) do
        if closeds:ct(t) >= 1 then
          mount:lighta(t, tenmk * 1.5)
          mount:lightb(t, tenmk * 10.5)
        else
          mount:lighta(t, tenmk)
          mount:lightb(t, tenmk * 0.2)
        end
      end
    end
  end
end