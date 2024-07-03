doge = 0
junme = 1

function ondice()
  doge = rand:gen(10)
end

function onmonkey()
  junme = 1
  status = doge
  local existself = exists[self:index()]
  local existl = exists[self:left():index()]
  local existc = exists[self:cross():index()]
  local existr = exists[self:right():index()]
  
  if status <= 1 then
    print("斷筋殺147m")
    existl:incmk(T34.new("1m"), -307)
    existc:incmk(T34.new("1m"), -307)
    existr:incmk(T34.new("1m"), -307)
    existl:incmk(T34.new("4m"), -307)
    existc:incmk(T34.new("4m"), -307)
    existr:incmk(T34.new("4m"), -307)
    existl:incmk(T34.new("7m"), -307)
    existc:incmk(T34.new("7m"), -307)
    existr:incmk(T34.new("7m"), -307)
    for i = 1, 9 do
      existself:incmk(T34.new(i .. "m"), -307)
      existl:incmk(T34.new(i .. "m"), 15)
      existc:incmk(T34.new(i .. "m"), 15)
      existr:incmk(T34.new(i .. "m"), 15)
    end
  end
  
  if status == 2 then
    print("斷筋殺258m")
    existl:incmk(T34.new("2m"), -307)
    existc:incmk(T34.new("2m"), -307)
    existr:incmk(T34.new("2m"), -307)
    existl:incmk(T34.new("5m"), -307)
    existc:incmk(T34.new("5m"), -307)
    existr:incmk(T34.new("5m"), -307)
    existl:incmk(T34.new("8m"), -307)
    existc:incmk(T34.new("8m"), -307)
    existr:incmk(T34.new("8m"), -307)
    for i = 1, 9 do
      existself:incmk(T34.new(i .. "m"), -307)
      existl:incmk(T34.new(i .. "m"), 15)
      existc:incmk(T34.new(i .. "m"), 15)
      existr:incmk(T34.new(i .. "m"), 15)
    end
  end
  
  if status == 3 then
    print("斷筋殺369m")
    existl:incmk(T34.new("3m"), -307)
    existc:incmk(T34.new("3m"), -307)
    existr:incmk(T34.new("3m"), -307)
    existl:incmk(T34.new("6m"), -307)
    existc:incmk(T34.new("6m"), -307)
    existr:incmk(T34.new("6m"), -307)
    existl:incmk(T34.new("9m"), -307)
    existc:incmk(T34.new("9m"), -307)
    existr:incmk(T34.new("9m"), -307)
    for i = 1, 9 do
      existself:incmk(T34.new(i .. "m"), -307)
      existl:incmk(T34.new(i .. "m"), 15)
      existc:incmk(T34.new(i .. "m"), 15)
      existr:incmk(T34.new(i .. "m"), 15)
    end
  end
  
  if status == 4 then
    print("斷筋殺147p")
    existl:incmk(T34.new("1p"), -307)
    existc:incmk(T34.new("1p"), -307)
    existr:incmk(T34.new("1p"), -307)
    existl:incmk(T34.new("4p"), -307)
    existc:incmk(T34.new("4p"), -307)
    existr:incmk(T34.new("4p"), -307)
    existl:incmk(T34.new("7p"), -307)
    existc:incmk(T34.new("7p"), -307)
    existr:incmk(T34.new("7p"), -307)
    for i = 1, 9 do
      existself:incmk(T34.new(i .. "p"), -307)
      existl:incmk(T34.new(i .. "p"), 15)
      existc:incmk(T34.new(i .. "p"), 15)
      existr:incmk(T34.new(i .. "p"), 15)
    end
  end
  
if status == 5 then
    print("斷筋殺258p")
    existl:incmk(T34.new("2p"), -307)
    existc:incmk(T34.new("2p"), -307)
    existr:incmk(T34.new("2p"), -307)
    existl:incmk(T34.new("5p"), -307)
    existc:incmk(T34.new("5p"), -307)
    existr:incmk(T34.new("5p"), -307)
    existl:incmk(T34.new("8p"), -307)
    existc:incmk(T34.new("8p"), -307)
    existr:incmk(T34.new("8p"), -307)
    for i = 1, 9 do
      existself:incmk(T34.new(i .. "p"), -307)
      existl:incmk(T34.new(i .. "p"), 15)
      existc:incmk(T34.new(i .. "p"), 15)
      existr:incmk(T34.new(i .. "p"), 15)
    end
  end
  
  if status == 6 then
    print("斷筋殺369p")
    existl:incmk(T34.new("3p"), -307)
    existc:incmk(T34.new("3p"), -307)
    existr:incmk(T34.new("3p"), -307)
    existl:incmk(T34.new("6p"), -307)
    existc:incmk(T34.new("6p"), -307)
    existr:incmk(T34.new("6p"), -307)
    existl:incmk(T34.new("9p"), -307)
    existc:incmk(T34.new("9p"), -307)
    existr:incmk(T34.new("9p"), -307)
    for i = 1, 9 do
      existself:incmk(T34.new(i .. "p"), -307)
      existl:incmk(T34.new(i .. "p"), 15)
      existc:incmk(T34.new(i .. "p"), 15)
      existr:incmk(T34.new(i .. "p"), 15)
    end
  end

  if status == 7 then
    print("斷筋殺147s")
    existl:incmk(T34.new("1s"), -307)
    existc:incmk(T34.new("1s"), -307)
    existr:incmk(T34.new("1s"), -307)
    existl:incmk(T34.new("4s"), -307)
    existc:incmk(T34.new("4s"), -307)
    existr:incmk(T34.new("4s"), -307)
    existl:incmk(T34.new("7s"), -307)
    existc:incmk(T34.new("7s"), -307)
    existr:incmk(T34.new("7s"), -307)
    for i = 1, 9 do
      existself:incmk(T34.new(i .. "s"), -307)
      existl:incmk(T34.new(i .. "s"), 15)
      existc:incmk(T34.new(i .. "s"), 15)
      existr:incmk(T34.new(i .. "s"), 15)
    end
  end
  
if status == 8 then
    print("斷筋殺258s")
    existl:incmk(T34.new("2s"), -307)
    existc:incmk(T34.new("2s"), -307)
    existr:incmk(T34.new("2s"), -307)
    existl:incmk(T34.new("5s"), -307)
    existc:incmk(T34.new("5s"), -307)
    existr:incmk(T34.new("5s"), -307)
    existl:incmk(T34.new("8s"), -307)
    existc:incmk(T34.new("8s"), -307)
    existr:incmk(T34.new("8s"), -307)
    for i = 1, 9 do
      existself:incmk(T34.new(i .. "s"), -307)
      existl:incmk(T34.new(i .. "s"), 15)
      existc:incmk(T34.new(i .. "s"), 15)
      existr:incmk(T34.new(i .. "s"), 15)
    end
  end
  
  if status >= 9 then
    print("斷筋殺369s")
    existl:incmk(T34.new("3s"), -307)
    existc:incmk(T34.new("3s"), -307)
    existr:incmk(T34.new("3s"), -307)
    existl:incmk(T34.new("6s"), -307)
    existc:incmk(T34.new("6s"), -307)
    existr:incmk(T34.new("6s"), -307)
    existl:incmk(T34.new("9s"), -307)
    existc:incmk(T34.new("9s"), -307)
    existr:incmk(T34.new("9s"), -307)
    for i = 1, 9 do
      existself:incmk(T34.new(i .. "s"), -307)
      existl:incmk(T34.new(i .. "s"), 15)
      existc:incmk(T34.new(i .. "s"), 15)
      existr:incmk(T34.new(i .. "s"), 15)
    end
  end
end

function checkinit()
  if  iter > 307 then
    return true
  end
  
  if status <= 1 then
    return init:ct(T34.new("1m")) + init:ct(T34.new("4m")) + init:ct(T34.new("7m")) == 0
  end
  
  if status == 2 then
    return init:ct(T34.new("2m")) + init:ct(T34.new("5m")) + init:ct(T34.new("8m")) == 0
  end
  
  if status == 3 then
    return init:ct(T34.new("3m")) + init:ct(T34.new("6m")) + init:ct(T34.new("9m")) == 0
  end
  
  if status == 4 then
    return init:ct(T34.new("1p")) + init:ct(T34.new("4p")) + init:ct(T34.new("7p")) == 0
  end
  
if status == 5 then
    return init:ct(T34.new("2p")) + init:ct(T34.new("5p")) + init:ct(T34.new("8p")) == 0
  end
  
  if status == 6 then
    return init:ct(T34.new("3p")) + init:ct(T34.new("6p")) + init:ct(T34.new("9p")) == 0
  end

  if status == 7 then
    return init:ct(T34.new("1s")) + init:ct(T34.new("4s")) + init:ct(T34.new("7s")) == 0
  end
  
if status == 8 then
    return init:ct(T34.new("2s")) + init:ct(T34.new("5s")) + init:ct(T34.new("8s")) == 0
  end
  
  if status >= 9 then
    return init:ct(T34.new("3s")) + init:ct(T34.new("6s")) + init:ct(T34.new("9s")) == 0
  end
end

function ondraw()
  status = doge
  junme = junme + 1
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local junmk = junme 
  local ctx = game:getformctx(self)
  
  if mount:remainpii() == 70 then
    if status <= 1 then
      mount:loadb(T37.new("1m"), 4)
      mount:loadb(T37.new("4m"), 4)
      mount:loadb(T37.new("7m"), 4)
    end
    if status == 2 then
      mount:loadb(T37.new("2m"), 4)
      mount:loadb(T37.new("5m"), 4)
      mount:loadb(T37.new("0m"), 1)
      mount:loadb(T37.new("8m"), 4)
    end
    if status == 3 then
      mount:loadb(T37.new("3m"), 4)
      mount:loadb(T37.new("6m"), 4)
      mount:loadb(T37.new("9m"), 4)
    end
    if status == 4 then
      mount:loadb(T37.new("1p"), 4)
      mount:loadb(T37.new("4p"), 4)
      mount:loadb(T37.new("7p"), 4)
    end
    if status == 5 then
      mount:loadb(T37.new("2p"), 4)
      mount:loadb(T37.new("5p"), 4)
      mount:loadb(T37.new("0p"), 2)
      mount:loadb(T37.new("8p"), 4)
    end
    if status == 6 then
      mount:loadb(T37.new("3p"), 4)
      mount:loadb(T37.new("6p"), 4)
      mount:loadb(T37.new("9p"), 4)
    end
    if status == 7 then
      mount:loadb(T37.new("1s"), 4)
      mount:loadb(T37.new("4s"), 4)
      mount:loadb(T37.new("7s"), 4)
    end
    if status == 8 then
      mount:loadb(T37.new("2s"), 4)
      mount:loadb(T37.new("5s"), 4)
      mount:loadb(T37.new("0s"), 1)
      mount:loadb(T37.new("8s"), 4)
    end
    if status >= 9 then
      mount:loadb(T37.new("3s"), 4)
      mount:loadb(T37.new("6s"), 4)
      mount:loadb(T37.new("9s"), 4)
    end
  end

  if rinshan then
    return
  end
  
  if who == self then
    if status <= 3 then
      for i = 1, 9 do
        mount:lighta(T34.new(i .. "m"), -37)
      end
      mount:lighta(T37.new("0m"), -37)
    end
    if status >= 4 and status <= 6 then
      for i = 1, 9 do
        mount:lighta(T34.new(i .. "p"), -37)
      end
      mount:lighta(T37.new("0p"), -37)
    end
    if status >= 7 then
      for i = 1, 9 do
        mount:lighta(T34.new(i .. "s"), -37)
      end
      mount:lighta(T37.new("0s"), -37)
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
  else
    if status <= 3 then
      for i = 1, 9 do
        mount:lighta(T34.new(i .. "m"), 15)
      end
    end
    if status >= 4 and status <= 6 then
      for i = 1, 9 do
        mount:lighta(T34.new(i .. "p"), 15)
      end
    end
    if status >= 7 then
      for i = 1, 9 do
        mount:lighta(T34.new(i .. "s"), 15)
      end
    end
  end
end
