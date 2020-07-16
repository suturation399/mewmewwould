doge = 0

function ondice()
  doge = rand:gen(18)
end

function onmonkey()
  status = doge
  local existself = exists[self:index()]
  local existl = exists[self:left():index()]
  local existc = exists[self:cross():index()]
  local existr = exists[self:right():index()]
  
  if status <= 1 then
    existl:incmk(T34.new("1m"), -307)
    existc:incmk(T34.new("1m"), -307)
    existr:incmk(T34.new("1m"), -307)
    existl:incmk(T34.new("4m"), -307)
    existc:incmk(T34.new("4m"), -307)
    existr:incmk(T34.new("4m"), -307)
    existl:incmk(T34.new("2m"), 30)
    existc:incmk(T34.new("2m"), 30)
    existr:incmk(T34.new("2m"), 30)
    existl:incmk(T34.new("3m"), 30)
    existc:incmk(T34.new("3m"), 30)
    existr:incmk(T34.new("3m"), 30)
    existself:incmk(T34.new("1m"), 307)
    existself:incmk(T34.new("4m"), 307)
  end
  
  if status == 2 then
    existl:incmk(T34.new("2m"), -307)
    existc:incmk(T34.new("2m"), -307)
    existr:incmk(T34.new("2m"), -307)
    existl:incmk(T34.new("5m"), -307)
    existc:incmk(T34.new("5m"), -307)
    existr:incmk(T34.new("5m"), -307)
    existl:incmk(T34.new("4m"), 30)
    existc:incmk(T34.new("4m"), 30)
    existr:incmk(T34.new("4m"), 30)
    existl:incmk(T34.new("3m"), 30)
    existc:incmk(T34.new("3m"), 30)
    existr:incmk(T34.new("3m"), 30)
    existself:incmk(T34.new("2m"), 307)
    existself:incmk(T34.new("5m"), 307)
  end
  
  if status == 3 then
    existl:incmk(T34.new("3m"), -307)
    existc:incmk(T34.new("3m"), -307)
    existr:incmk(T34.new("3m"), -307)
    existl:incmk(T34.new("6m"), -307)
    existc:incmk(T34.new("6m"), -307)
    existr:incmk(T34.new("6m"), -307)
    existl:incmk(T34.new("4m"), 30)
    existc:incmk(T34.new("4m"), 30)
    existr:incmk(T34.new("4m"), 30)
    existl:incmk(T34.new("5m"), 30)
    existc:incmk(T34.new("5m"), 30)
    existr:incmk(T34.new("5m"), 30)
    existself:incmk(T34.new("3m"), 307)
    existself:incmk(T34.new("6m"), 307)
  end
  
  if status == 4 then
    existl:incmk(T34.new("4m"), -307)
    existc:incmk(T34.new("4m"), -307)
    existr:incmk(T34.new("4m"), -307)
    existl:incmk(T34.new("7m"), -307)
    existc:incmk(T34.new("7m"), -307)
    existr:incmk(T34.new("7m"), -307)
    existl:incmk(T34.new("6m"), 30)
    existc:incmk(T34.new("6m"), 30)
    existr:incmk(T34.new("6m"), 30)
    existl:incmk(T34.new("5m"), 30)
    existc:incmk(T34.new("5m"), 30)
    existr:incmk(T34.new("5m"), 30)
    existself:incmk(T34.new("4m"), 307)
    existself:incmk(T34.new("7m"), 307)
  end
  
  if status == 5 then
    existl:incmk(T34.new("5m"), -307)
    existc:incmk(T34.new("5m"), -307)
    existr:incmk(T34.new("5m"), -307)
    existl:incmk(T34.new("8m"), -307)
    existc:incmk(T34.new("8m"), -307)
    existr:incmk(T34.new("8m"), -307)
    existl:incmk(T34.new("6m"), 30)
    existc:incmk(T34.new("6m"), 30)
    existr:incmk(T34.new("6m"), 30)
    existl:incmk(T34.new("7m"), 30)
    existc:incmk(T34.new("7m"), 30)
    existr:incmk(T34.new("7m"), 30)
    existself:incmk(T34.new("5m"), 307)
    existself:incmk(T34.new("8m"), 307)
  end
  
  if status == 6 then
    existl:incmk(T34.new("6m"), -307)
    existc:incmk(T34.new("6m"), -307)
    existr:incmk(T34.new("6m"), -307)
    existl:incmk(T34.new("9m"), -307)
    existc:incmk(T34.new("9m"), -307)
    existr:incmk(T34.new("9m"), -307)
    existl:incmk(T34.new("8m"), 30)
    existc:incmk(T34.new("8m"), 30)
    existr:incmk(T34.new("8m"), 30)
    existl:incmk(T34.new("7m"), 30)
    existc:incmk(T34.new("7m"), 30)
    existr:incmk(T34.new("7m"), 30)
    existself:incmk(T34.new("6m"), 307)
    existself:incmk(T34.new("9m"), 307)
  end
  
  if status == 7 then
    existl:incmk(T34.new("1p"), -307)
    existc:incmk(T34.new("1p"), -307)
    existr:incmk(T34.new("1p"), -307)
    existl:incmk(T34.new("4p"), -307)
    existc:incmk(T34.new("4p"), -307)
    existr:incmk(T34.new("4p"), -307)
    existl:incmk(T34.new("2p"), 30)
    existc:incmk(T34.new("2p"), 30)
    existr:incmk(T34.new("2p"), 30)
    existl:incmk(T34.new("3p"), 30)
    existc:incmk(T34.new("3p"), 30)
    existr:incmk(T34.new("3p"), 30)
    existself:incmk(T34.new("1p"), 307)
    existself:incmk(T34.new("4p"), 307)
  end
  
  if status == 8 then
    existl:incmk(T34.new("2p"), -307)
    existc:incmk(T34.new("2p"), -307)
    existr:incmk(T34.new("2p"), -307)
    existl:incmk(T34.new("5p"), -307)
    existc:incmk(T34.new("5p"), -307)
    existr:incmk(T34.new("5p"), -307)
    existl:incmk(T34.new("4p"), 30)
    existc:incmk(T34.new("4p"), 30)
    existr:incmk(T34.new("4p"), 30)
    existl:incmk(T34.new("3p"), 30)
    existc:incmk(T34.new("3p"), 30)
    existr:incmk(T34.new("3p"), 30)
    existself:incmk(T34.new("2p"), 307)
    existself:incmk(T34.new("5p"), 307)
  end
  
  if status == 9 then
    existl:incmk(T34.new("3p"), -307)
    existc:incmk(T34.new("3p"), -307)
    existr:incmk(T34.new("3p"), -307)
    existl:incmk(T34.new("6p"), -307)
    existc:incmk(T34.new("6p"), -307)
    existr:incmk(T34.new("6p"), -307)
    existl:incmk(T34.new("4p"), 30)
    existc:incmk(T34.new("4p"), 30)
    existr:incmk(T34.new("4p"), 30)
    existl:incmk(T34.new("5p"), 30)
    existc:incmk(T34.new("5p"), 30)
    existr:incmk(T34.new("5p"), 30)
    existself:incmk(T34.new("3p"), 307)
    existself:incmk(T34.new("6p"), 307)
  end
  
  if status == 10 then
    existl:incmk(T34.new("4p"), -307)
    existc:incmk(T34.new("4p"), -307)
    existr:incmk(T34.new("4p"), -307)
    existl:incmk(T34.new("7p"), -307)
    existc:incmk(T34.new("7p"), -307)
    existr:incmk(T34.new("7p"), -307)
    existl:incmk(T34.new("6p"), 30)
    existc:incmk(T34.new("6p"), 30)
    existr:incmk(T34.new("6p"), 30)
    existl:incmk(T34.new("5p"), 30)
    existc:incmk(T34.new("5p"), 30)
    existr:incmk(T34.new("5p"), 30)
    existself:incmk(T34.new("4p"), 307)
    existself:incmk(T34.new("7p"), 307)
  end
  
  if status == 11 then
    existl:incmk(T34.new("5p"), -307)
    existc:incmk(T34.new("5p"), -307)
    existr:incmk(T34.new("5p"), -307)
    existl:incmk(T34.new("8p"), -307)
    existc:incmk(T34.new("8p"), -307)
    existr:incmk(T34.new("8p"), -307)
    existl:incmk(T34.new("6p"), 30)
    existc:incmk(T34.new("6p"), 30)
    existr:incmk(T34.new("6p"), 30)
    existl:incmk(T34.new("7p"), 30)
    existc:incmk(T34.new("7p"), 30)
    existr:incmk(T34.new("7p"), 30)
    existself:incmk(T34.new("5p"), 307)
    existself:incmk(T34.new("8p"), 307)
  end
  
  if status == 12 then
    existl:incmk(T34.new("6p"), -307)
    existc:incmk(T34.new("6p"), -307)
    existr:incmk(T34.new("6p"), -307)
    existl:incmk(T34.new("9p"), -307)
    existc:incmk(T34.new("9p"), -307)
    existr:incmk(T34.new("9p"), -307)
    existl:incmk(T34.new("8p"), 30)
    existc:incmk(T34.new("8p"), 30)
    existr:incmk(T34.new("8p"), 30)
    existl:incmk(T34.new("7p"), 30)
    existc:incmk(T34.new("7p"), 30)
    existr:incmk(T34.new("7p"), 30)
    existself:incmk(T34.new("6p"), 307)
    existself:incmk(T34.new("9p"), 307)
  end
  
  if status == 13 then
    existl:incmk(T34.new("1s"), -307)
    existc:incmk(T34.new("1s"), -307)
    existr:incmk(T34.new("1s"), -307)
    existl:incmk(T34.new("4s"), -307)
    existc:incmk(T34.new("4s"), -307)
    existr:incmk(T34.new("4s"), -307)
    existl:incmk(T34.new("2s"), 30)
    existc:incmk(T34.new("2s"), 30)
    existr:incmk(T34.new("2s"), 30)
    existl:incmk(T34.new("3s"), 30)
    existc:incmk(T34.new("3s"), 30)
    existr:incmk(T34.new("3s"), 30)
    existself:incmk(T34.new("1s"), 307)
    existself:incmk(T34.new("4s"), 307)
  end
  
  if status == 14 then
    existl:incmk(T34.new("2s"), -307)
    existc:incmk(T34.new("2s"), -307)
    existr:incmk(T34.new("2s"), -307)
    existl:incmk(T34.new("5s"), -307)
    existc:incmk(T34.new("5s"), -307)
    existr:incmk(T34.new("5s"), -307)
    existl:incmk(T34.new("4s"), 30)
    existc:incmk(T34.new("4s"), 30)
    existr:incmk(T34.new("4s"), 30)
    existl:incmk(T34.new("3s"), 30)
    existc:incmk(T34.new("3s"), 30)
    existr:incmk(T34.new("3s"), 30)
    existself:incmk(T34.new("2s"), 307)
    existself:incmk(T34.new("5s"), 307)
  end
  
  if status == 15 then
    existl:incmk(T34.new("3s"), -307)
    existc:incmk(T34.new("3s"), -307)
    existr:incmk(T34.new("3s"), -307)
    existl:incmk(T34.new("6s"), -307)
    existc:incmk(T34.new("6s"), -307)
    existr:incmk(T34.new("6s"), -307)
    existl:incmk(T34.new("4s"), 30)
    existc:incmk(T34.new("4s"), 30)
    existr:incmk(T34.new("4s"), 30)
    existl:incmk(T34.new("5s"), 30)
    existc:incmk(T34.new("5s"), 30)
    existr:incmk(T34.new("5s"), 30)
    existself:incmk(T34.new("3s"), 307)
    existself:incmk(T34.new("6s"), 307)
  end
  
  if status == 16 then
    existl:incmk(T34.new("4s"), -307)
    existc:incmk(T34.new("4s"), -307)
    existr:incmk(T34.new("4s"), -307)
    existl:incmk(T34.new("7s"), -307)
    existc:incmk(T34.new("7s"), -307)
    existr:incmk(T34.new("7s"), -307)
    existl:incmk(T34.new("6s"), 30)
    existc:incmk(T34.new("6s"), 30)
    existr:incmk(T34.new("6s"), 30)
    existl:incmk(T34.new("5s"), 30)
    existc:incmk(T34.new("5s"), 30)
    existr:incmk(T34.new("5s"), 30)
    existself:incmk(T34.new("4s"), 307)
    existself:incmk(T34.new("7s"), 307)
  end
  
  if status == 17 then
    existl:incmk(T34.new("5s"), -307)
    existc:incmk(T34.new("5s"), -307)
    existr:incmk(T34.new("5s"), -307)
    existl:incmk(T34.new("8s"), -307)
    existc:incmk(T34.new("8s"), -307)
    existr:incmk(T34.new("8s"), -307)
    existl:incmk(T34.new("6s"), 30)
    existc:incmk(T34.new("6s"), 30)
    existr:incmk(T34.new("6s"), 30)
    existl:incmk(T34.new("7s"), 30)
    existc:incmk(T34.new("7s"), 30)
    existr:incmk(T34.new("7s"), 30)
    existself:incmk(T34.new("5s"), 307)
    existself:incmk(T34.new("8s"), 307)
  end
  
  if status >= 18 then
    existl:incmk(T34.new("6s"), -307)
    existc:incmk(T34.new("6s"), -307)
    existr:incmk(T34.new("6s"), -307)
    existl:incmk(T34.new("9s"), -307)
    existc:incmk(T34.new("9s"), -307)
    existr:incmk(T34.new("9s"), -307)
    existl:incmk(T34.new("8s"), 30)
    existc:incmk(T34.new("8s"), 30)
    existr:incmk(T34.new("8s"), 30)
    existl:incmk(T34.new("7s"), 30)
    existc:incmk(T34.new("7s"), 30)
    existr:incmk(T34.new("7s"), 30)
    existself:incmk(T34.new("6s"), 307)
    existself:incmk(T34.new("9s"), 307)
  end
end

function checkinit()
  status = doge
  junme = 0
  
  if iter > 130 then
    return true
  end
  
  if status <= 1 then
    if who ~= self then
      return init:ct(T34.new("2m")) == 1 and init:ct(T34.new("3m")) == 1
    else
      return init:ct(T34.new("1m")) == 3 and init:ct(T34.new("2m")) == 0 and init:ct(T34.new("3m")) == 0 and init:ct(T34.new("4m")) == 3
    end
  end
  
  if status == 2 then
    if who ~= self then
      return init:ct(T34.new("3m")) == 1 and init:ct(T34.new("4m")) == 1
    else
      return init:ct(T34.new("2m")) == 3 and init:ct(T34.new("3m")) == 0 and init:ct(T34.new("4m")) == 0 and init:ct(T34.new("5m")) == 3
    end
  end
  
  if status == 3 then
    if who ~= self then
      return init:ct(T34.new("4m")) == 1 and init:ct(T34.new("5m")) == 1
    else
      return init:ct(T34.new("3m")) == 3 and init:ct(T34.new("4m")) == 0 and init:ct(T34.new("5m")) == 0 and init:ct(T34.new("6m")) == 3
    end
  end
  
  if status == 4 then
    if who ~= self then
      return init:ct(T34.new("5m")) == 1 and init:ct(T34.new("6m")) == 1
    else
      return init:ct(T34.new("4m")) == 3 and init:ct(T34.new("5m")) == 0 and init:ct(T34.new("6m")) == 0 and init:ct(T34.new("7m")) == 3
    end
  end
  
  if status == 5 then
    if who ~= self then
      return init:ct(T34.new("6m")) == 1 and init:ct(T34.new("7m")) == 1
    else
      return init:ct(T34.new("5m")) == 3 and init:ct(T34.new("6m")) == 0 and init:ct(T34.new("7m")) == 0 and init:ct(T34.new("8m")) == 3
    end
  end
  
  if status == 6 then
    if who ~= self then
      return init:ct(T34.new("7m")) == 1 and init:ct(T34.new("8m")) == 1
    else
      return init:ct(T34.new("6m")) == 3 and init:ct(T34.new("7m")) == 0 and init:ct(T34.new("8m")) == 0 and init:ct(T34.new("9m")) == 3
    end
  end
  
  if status == 7 then
    if who ~= self then
      return init:ct(T34.new("2p")) == 1 and init:ct(T34.new("3p")) == 1
    else
      return init:ct(T34.new("1p")) == 3 and init:ct(T34.new("2p")) == 0 and init:ct(T34.new("3p")) == 0 and init:ct(T34.new("4p")) == 3
    end
  end
  
  if status == 8 then
    if who ~= self then
      return init:ct(T34.new("3p")) == 1 and init:ct(T34.new("4p")) == 1
    else
      return init:ct(T34.new("2p")) == 3 and init:ct(T34.new("3p")) == 0 and init:ct(T34.new("4p")) == 0 and init:ct(T34.new("5p")) == 3
    end
  end
  
  if status == 9 then
    if who ~= self then
      return init:ct(T34.new("4p")) == 1 and init:ct(T34.new("5p")) == 1
    else
      return init:ct(T34.new("3p")) == 3 and init:ct(T34.new("4p")) == 0 and init:ct(T34.new("5p")) == 0 and init:ct(T34.new("6p")) == 3
    end
  end
  
  if status == 10 then
    if who ~= self then
      return init:ct(T34.new("5p")) == 1 and init:ct(T34.new("6p")) == 1
    else
      return init:ct(T34.new("4p")) == 3 and init:ct(T34.new("5p")) == 0 and init:ct(T34.new("6p")) == 0 and init:ct(T34.new("7p")) == 3
    end
  end
  
  if status == 11 then
    if who ~= self then
      return init:ct(T34.new("6p")) == 1 and init:ct(T34.new("7p")) == 1
    else
      return init:ct(T34.new("5p")) == 3 and init:ct(T34.new("6p")) == 0 and init:ct(T34.new("7p")) == 0 and init:ct(T34.new("8p")) == 3
    end
  end
  
  if status == 12 then
    if who ~= self then
      return init:ct(T34.new("7p")) == 1 and init:ct(T34.new("8p")) == 1
    else
      return init:ct(T34.new("6p")) == 3 and init:ct(T34.new("7p")) == 0 and init:ct(T34.new("8p")) == 0 and init:ct(T34.new("9p")) == 3
    end
  end
  
  if status == 13 then
    if who ~= self then
      return init:ct(T34.new("2s")) == 1 and init:ct(T34.new("3s")) == 1
    else
      return init:ct(T34.new("1s")) == 3 and init:ct(T34.new("2s")) == 0 and init:ct(T34.new("3s")) == 0 and init:ct(T34.new("4s")) == 3
    end
  end
  
  if status == 14 then
    if who ~= self then
      return init:ct(T34.new("3s")) == 1 and init:ct(T34.new("4s")) == 1
    else
      return init:ct(T34.new("2s")) == 3 and init:ct(T34.new("3s")) == 0 and init:ct(T34.new("4s")) == 0 and init:ct(T34.new("5s")) == 3
    end
  end
  
  if status == 15 then
    if who ~= self then
      return init:ct(T34.new("4s")) == 1 and init:ct(T34.new("5s")) == 1
    else
      return init:ct(T34.new("3s")) == 3 and init:ct(T34.new("4s")) == 0 and init:ct(T34.new("5s")) == 0 and init:ct(T34.new("6s")) == 3
    end
  end
  
  if status == 16 then
    if who ~= self then
      return init:ct(T34.new("5s")) == 1 and init:ct(T34.new("6s")) == 1
    else
      return init:ct(T34.new("4s")) == 3 and init:ct(T34.new("5s")) == 0 and init:ct(T34.new("6s")) == 0 and init:ct(T34.new("7s")) == 3
    end
  end
  
  if status == 17 then
    if who ~= self then
      return init:ct(T34.new("6s")) == 1 and init:ct(T34.new("7s")) == 1
    else
      return init:ct(T34.new("5s")) == 3 and init:ct(T34.new("6s")) == 0 and init:ct(T34.new("7s")) == 0 and init:ct(T34.new("8s")) == 3
    end
  end
  
  if status >= 18 then
    if who ~= self then
      return init:ct(T34.new("7s")) == 1 and init:ct(T34.new("8s")) == 1
    else
      return init:ct(T34.new("6s")) == 3 and init:ct(T34.new("7s")) == 0 and init:ct(T34.new("8s")) == 0 and init:ct(T34.new("9s")) == 3
    end
  end
end

function ondraw()
  status = doge
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local junmk = junme * 4
  
  if rinshan then
    return
  end
  
  if who ~= self then
    if status <= 1 then
      mount:lighta(T34.new("1m"), -307)
      mount:lighta(T34.new("2m"), -307)
      mount:lighta(T34.new("3m"), -307)
      mount:lighta(T34.new("4m"), -307)
    end
    if status == 2 then
      mount:lighta(T34.new("2m"), -307)
      mount:lighta(T34.new("3m"), -307)
      mount:lighta(T34.new("4m"), -307)
      mount:lighta(T34.new("5m"), -307)
    end
    if status == 3 then
      mount:lighta(T34.new("3m"), -307)
      mount:lighta(T34.new("4m"), -307)
      mount:lighta(T34.new("5m"), -307)
      mount:lighta(T34.new("6m"), -307)
    end
    if status == 4 then
      mount:lighta(T34.new("4m"), -307)
      mount:lighta(T34.new("5m"), -307)
      mount:lighta(T34.new("6m"), -307)
      mount:lighta(T34.new("7m"), -307)
    end
    if status == 5 then
      mount:lighta(T34.new("5m"), -307)
      mount:lighta(T34.new("6m"), -307)
      mount:lighta(T34.new("7m"), -307)
      mount:lighta(T34.new("8m"), -307)
    end
    if status == 6 then
      mount:lighta(T34.new("6m"), -307)
      mount:lighta(T34.new("7m"), -307)
      mount:lighta(T34.new("8m"), -307)
      mount:lighta(T34.new("9m"), -307)
    end
    if status == 7 then
      mount:lighta(T34.new("1p"), -307)
      mount:lighta(T34.new("2p"), -307)
      mount:lighta(T34.new("3p"), -307)
      mount:lighta(T34.new("4p"), -307)
    end
    if status == 8 then
      mount:lighta(T34.new("2p"), -307)
      mount:lighta(T34.new("3p"), -307)
      mount:lighta(T34.new("4p"), -307)
      mount:lighta(T34.new("5p"), -307)
    end
    if status == 9 then
      mount:lighta(T34.new("3p"), -307)
      mount:lighta(T34.new("4p"), -307)
      mount:lighta(T34.new("5p"), -307)
      mount:lighta(T34.new("6p"), -307)
    end
    if status == 10 then
      mount:lighta(T34.new("4p"), -307)
      mount:lighta(T34.new("5p"), -307)
      mount:lighta(T34.new("6p"), -307)
      mount:lighta(T34.new("7p"), -307)
    end
    if status == 11 then
      mount:lighta(T34.new("5p"), -307)
      mount:lighta(T34.new("6p"), -307)
      mount:lighta(T34.new("7p"), -307)
      mount:lighta(T34.new("8p"), -307)
    end
    if status == 12 then
      mount:lighta(T34.new("6p"), -307)
      mount:lighta(T34.new("7p"), -307)
      mount:lighta(T34.new("8p"), -307)
      mount:lighta(T34.new("9p"), -307)
    end
    if status == 13 then
      mount:lighta(T34.new("1s"), -307)
      mount:lighta(T34.new("2s"), -307)
      mount:lighta(T34.new("3s"), -307)
      mount:lighta(T34.new("4s"), -307)
    end
    if status == 14 then
      mount:lighta(T34.new("2s"), -307)
      mount:lighta(T34.new("3s"), -307)
      mount:lighta(T34.new("4s"), -307)
      mount:lighta(T34.new("5s"), -307)
    end
    if status == 15 then
      mount:lighta(T34.new("3s"), -307)
      mount:lighta(T34.new("4s"), -307)
      mount:lighta(T34.new("5s"), -307)
      mount:lighta(T34.new("6s"), -307)
    end
    if status == 16 then
      mount:lighta(T34.new("4s"), -307)
      mount:lighta(T34.new("5s"), -307)
      mount:lighta(T34.new("6s"), -307)
      mount:lighta(T34.new("7s"), -307)
    end
    if status == 17 then
      mount:lighta(T34.new("5s"), -307)
      mount:lighta(T34.new("6s"), -307)
      mount:lighta(T34.new("7s"), -307)
      mount:lighta(T34.new("8s"), -307)
    end
    if status >= 18 then
      mount:lighta(T34.new("6s"), -307)
      mount:lighta(T34.new("7s"), -307)
      mount:lighta(T34.new("8s"), -307)
      mount:lighta(T34.new("9s"), -307)
    end
  end
  
  if who == self then
    if status <= 1 then
      mount:lighta(T34.new("1m"), -307)
      mount:lighta(T34.new("2m"), -307)
      mount:lighta(T34.new("3m"), -307)
      mount:lighta(T34.new("4m"), -307)
    end
    if status == 2 then
      mount:lighta(T34.new("2m"), -307)
      mount:lighta(T34.new("3m"), -307)
      mount:lighta(T34.new("4m"), -307)
      mount:lighta(T34.new("5m"), -307)
    end
    if status == 3 then
      mount:lighta(T34.new("3m"), -307)
      mount:lighta(T34.new("4m"), -307)
      mount:lighta(T34.new("5m"), -307)
      mount:lighta(T34.new("6m"), -307)
    end
    if status == 4 then
      mount:lighta(T34.new("4m"), -307)
      mount:lighta(T34.new("5m"), -307)
      mount:lighta(T34.new("6m"), -307)
      mount:lighta(T34.new("7m"), -307)
    end
    if status == 5 then
      mount:lighta(T34.new("5m"), -307)
      mount:lighta(T34.new("6m"), -307)
      mount:lighta(T34.new("7m"), -307)
      mount:lighta(T34.new("8m"), -307)
    end
    if status == 6 then
      mount:lighta(T34.new("6m"), -307)
      mount:lighta(T34.new("7m"), -307)
      mount:lighta(T34.new("8m"), -307)
      mount:lighta(T34.new("9m"), -307)
    end
    if status == 7 then
      mount:lighta(T34.new("1p"), -307)
      mount:lighta(T34.new("2p"), -307)
      mount:lighta(T34.new("3p"), -307)
      mount:lighta(T34.new("4p"), -307)
    end
    if status == 8 then
      mount:lighta(T34.new("2p"), -307)
      mount:lighta(T34.new("3p"), -307)
      mount:lighta(T34.new("4p"), -307)
      mount:lighta(T34.new("5p"), -307)
    end
    if status == 9 then
      mount:lighta(T34.new("3p"), -307)
      mount:lighta(T34.new("4p"), -307)
      mount:lighta(T34.new("5p"), -307)
      mount:lighta(T34.new("6p"), -307)
    end
    if status == 10 then
      mount:lighta(T34.new("4p"), -307)
      mount:lighta(T34.new("5p"), -307)
      mount:lighta(T34.new("6p"), -307)
      mount:lighta(T34.new("7p"), -307)
    end
    if status == 11 then
      mount:lighta(T34.new("5p"), -307)
      mount:lighta(T34.new("6p"), -307)
      mount:lighta(T34.new("7p"), -307)
      mount:lighta(T34.new("8p"), -307)
    end
    if status == 12 then
      mount:lighta(T34.new("6p"), -307)
      mount:lighta(T34.new("7p"), -307)
      mount:lighta(T34.new("8p"), -307)
      mount:lighta(T34.new("9p"), -307)
    end
    if status == 13 then
      mount:lighta(T34.new("1s"), -307)
      mount:lighta(T34.new("2s"), -307)
      mount:lighta(T34.new("3s"), -307)
      mount:lighta(T34.new("4s"), -307)
    end
    if status == 14 then
      mount:lighta(T34.new("2s"), -307)
      mount:lighta(T34.new("3s"), -307)
      mount:lighta(T34.new("4s"), -307)
      mount:lighta(T34.new("5s"), -307)
    end
    if status == 15 then
      mount:lighta(T34.new("3s"), -307)
      mount:lighta(T34.new("4s"), -307)
      mount:lighta(T34.new("5s"), -307)
      mount:lighta(T34.new("6s"), -307)
    end
    if status == 16 then
      mount:lighta(T34.new("4s"), -307)
      mount:lighta(T34.new("5s"), -307)
      mount:lighta(T34.new("6s"), -307)
      mount:lighta(T34.new("7s"), -307)
    end
    if status == 17 then
      mount:lighta(T34.new("5s"), -307)
      mount:lighta(T34.new("6s"), -307)
      mount:lighta(T34.new("7s"), -307)
      mount:lighta(T34.new("8s"), -307)
    end
    if status >= 18 then
      mount:lighta(T34.new("6s"), -307)
      mount:lighta(T34.new("7s"), -307)
      mount:lighta(T34.new("8s"), -307)
      mount:lighta(T34.new("9s"), -307)
    end
    junme = junme + 1
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, junmk)
    end
  end
end
