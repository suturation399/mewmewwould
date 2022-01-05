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
    print("147m")
    existl:incmk(T34.new("1m"), -307)
    existc:incmk(T34.new("1m"), -307)
    existr:incmk(T34.new("1m"), -307)
    existl:incmk(T34.new("4m"), -307)
    existc:incmk(T34.new("4m"), -307)
    existr:incmk(T34.new("4m"), -307)
    existl:incmk(T34.new("7m"), -307)
    existc:incmk(T34.new("7m"), -307)
    existr:incmk(T34.new("7m"), -307)
    existself:incmk(T34.new("1m"), -307)
    existself:incmk(T34.new("4m"), -307)
    existself:incmk(T34.new("7m"), -307)
  end
  
  if status == 2 then
    print("258m")
    existl:incmk(T34.new("2m"), -307)
    existc:incmk(T34.new("2m"), -307)
    existr:incmk(T34.new("2m"), -307)
    existl:incmk(T34.new("5m"), -307)
    existc:incmk(T34.new("5m"), -307)
    existr:incmk(T34.new("5m"), -307)
    existl:incmk(T34.new("8m"), -307)
    existc:incmk(T34.new("8m"), -307)
    existr:incmk(T34.new("8m"), -307)
    existself:incmk(T34.new("2m"), -307)
    existself:incmk(T34.new("5m"), -307)
    existself:incmk(T34.new("8m"), -307)
  end
  
  if status == 3 then
    print("369m")
    existl:incmk(T34.new("3m"), -307)
    existc:incmk(T34.new("3m"), -307)
    existr:incmk(T34.new("3m"), -307)
    existl:incmk(T34.new("6m"), -307)
    existc:incmk(T34.new("6m"), -307)
    existr:incmk(T34.new("6m"), -307)
    existl:incmk(T34.new("9m"), -307)
    existc:incmk(T34.new("9m"), -307)
    existr:incmk(T34.new("9m"), -307)
    existself:incmk(T34.new("3m"), -307)
    existself:incmk(T34.new("6m"), -307)
    existself:incmk(T34.new("9m"), -307)
  end
  
  if status == 4 then
    print("147p")
    existl:incmk(T34.new("1p"), -307)
    existc:incmk(T34.new("1p"), -307)
    existr:incmk(T34.new("1p"), -307)
    existl:incmk(T34.new("4p"), -307)
    existc:incmk(T34.new("4p"), -307)
    existr:incmk(T34.new("4p"), -307)
    existl:incmk(T34.new("7p"), -307)
    existc:incmk(T34.new("7p"), -307)
    existr:incmk(T34.new("7p"), -307)
    existself:incmk(T34.new("1p"), -307)
    existself:incmk(T34.new("4p"), -307)
    existself:incmk(T34.new("7p"), -307)
  end
  
if status == 5 then
    print("258p")
    existl:incmk(T34.new("2p"), -307)
    existc:incmk(T34.new("2p"), -307)
    existr:incmk(T34.new("2p"), -307)
    existl:incmk(T34.new("5p"), -307)
    existc:incmk(T34.new("5p"), -307)
    existr:incmk(T34.new("5p"), -307)
    existl:incmk(T34.new("8p"), -307)
    existc:incmk(T34.new("8p"), -307)
    existr:incmk(T34.new("8p"), -307)
    existself:incmk(T34.new("2p"), -307)
    existself:incmk(T34.new("5p"), -307)
    existself:incmk(T34.new("8p"), -307)
  end
  
  if status == 6 then
    print("369p")
    existl:incmk(T34.new("3p"), -307)
    existc:incmk(T34.new("3p"), -307)
    existr:incmk(T34.new("3p"), -307)
    existl:incmk(T34.new("6p"), -307)
    existc:incmk(T34.new("6p"), -307)
    existr:incmk(T34.new("6p"), -307)
    existl:incmk(T34.new("9p"), -307)
    existc:incmk(T34.new("9p"), -307)
    existr:incmk(T34.new("9p"), -307)
    existself:incmk(T34.new("3p"), -307)
    existself:incmk(T34.new("6p"), -307)
    existself:incmk(T34.new("9p"), -307)
  end

  if status == 7 then
    print("147s")
    existl:incmk(T34.new("1s"), -307)
    existc:incmk(T34.new("1s"), -307)
    existr:incmk(T34.new("1s"), -307)
    existl:incmk(T34.new("4s"), -307)
    existc:incmk(T34.new("4s"), -307)
    existr:incmk(T34.new("4s"), -307)
    existl:incmk(T34.new("7s"), -307)
    existc:incmk(T34.new("7s"), -307)
    existr:incmk(T34.new("7s"), -307)
    existself:incmk(T34.new("1s"), -307)
    existself:incmk(T34.new("4s"), -307)
    existself:incmk(T34.new("7s"), -307)
  end
  
if status == 8 then
    print("258s")
    existl:incmk(T34.new("2s"), -307)
    existc:incmk(T34.new("2s"), -307)
    existr:incmk(T34.new("2s"), -307)
    existl:incmk(T34.new("5s"), -307)
    existc:incmk(T34.new("5s"), -307)
    existr:incmk(T34.new("5s"), -307)
    existl:incmk(T34.new("8s"), -307)
    existc:incmk(T34.new("8s"), -307)
    existr:incmk(T34.new("8s"), -307)
    existself:incmk(T34.new("2s"), -307)
    existself:incmk(T34.new("5s"), -307)
    existself:incmk(T34.new("8s"), -307)
  end
  
  if status >= 9 then
    print("369s")
    existl:incmk(T34.new("3s"), -307)
    existc:incmk(T34.new("3s"), -307)
    existr:incmk(T34.new("3s"), -307)
    existl:incmk(T34.new("6s"), -307)
    existc:incmk(T34.new("6s"), -307)
    existr:incmk(T34.new("6s"), -307)
    existl:incmk(T34.new("9s"), -307)
    existc:incmk(T34.new("9s"), -307)
    existr:incmk(T34.new("9s"), -307)
    existself:incmk(T34.new("3s"), -307)
    existself:incmk(T34.new("6s"), -307)
    existself:incmk(T34.new("9s"), -307)
  end
end

function ondraw()
  status = doge
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local junmk = junme * 4
  
  if rinshan then
    if status <= 1 then
      mount:lighta(T34.new("1m"), 307)
      mount:lighta(T34.new("4m"), 307)
      mount:lighta(T34.new("7m"), 307)
    end
    if status == 2 then
      mount:lighta(T34.new("2m"), 307)
      mount:lighta(T34.new("5m"), 307)
      mount:lighta(T34.new("8m"), 307)
    end
    if status == 3 then
      mount:lighta(T34.new("3m"), 307)
      mount:lighta(T34.new("6m"), 307)
      mount:lighta(T34.new("9m"), 307)
    end
    if status == 4 then
      mount:lighta(T34.new("1p"), 307)
      mount:lighta(T34.new("4p"), 307)
      mount:lighta(T34.new("7p"), 307)
    end
    if status == 5 then
      mount:lighta(T34.new("2p"), 307)
      mount:lighta(T34.new("5p"), 307)
      mount:lighta(T34.new("8p"), 307)
    end
    if status == 6 then
      mount:lighta(T34.new("3p"), 307)
      mount:lighta(T34.new("6p"), 307)
      mount:lighta(T34.new("9p"), 307)
    end
    if status == 7 then
      mount:lighta(T34.new("1s"), 307)
      mount:lighta(T34.new("4s"), 307)
      mount:lighta(T34.new("7s"), 307)
    end
    if status == 8 then
      mount:lighta(T34.new("2s"), 307)
      mount:lighta(T34.new("5s"), 307)
      mount:lighta(T34.new("8s"), 307)
    end
    if status >= 9 then
      mount:lighta(T34.new("3s"), 307)
      mount:lighta(T34.new("6s"), 307)
      mount:lighta(T34.new("9s"), 307)
    end
  else
    if status <= 1 then
      mount:lighta(T34.new("1m"), -307)
      mount:lighta(T34.new("4m"), -307)
      mount:lighta(T34.new("7m"), -307)
    end
    if status == 2 then
      mount:lighta(T34.new("2m"), -307)
      mount:lighta(T34.new("5m"), -307)
      mount:lighta(T34.new("8m"), -307)
    end
    if status == 3 then
      mount:lighta(T34.new("3m"), -307)
      mount:lighta(T34.new("6m"), -307)
      mount:lighta(T34.new("9m"), -307)
    end
    if status == 4 then
      mount:lighta(T34.new("1p"), -307)
      mount:lighta(T34.new("4p"), -307)
      mount:lighta(T34.new("7p"), -307)
    end
    if status == 5 then
      mount:lighta(T34.new("2p"), -307)
      mount:lighta(T34.new("5p"), -307)
      mount:lighta(T34.new("8p"), -307)
    end
    if status == 6 then
      mount:lighta(T34.new("3p"), -307)
      mount:lighta(T34.new("6p"), -307)
      mount:lighta(T34.new("9p"), -307)
    end
    if status == 7 then
      mount:lighta(T34.new("1s"), -307)
      mount:lighta(T34.new("4s"), -307)
      mount:lighta(T34.new("7s"), -307)
    end
    if status == 8 then
      mount:lighta(T34.new("2s"), -307)
      mount:lighta(T34.new("5s"), -307)
      mount:lighta(T34.new("8s"), -307)
    end
    if status >= 9 then
      mount:lighta(T34.new("3s"), -307)
      mount:lighta(T34.new("6s"), -307)
      mount:lighta(T34.new("9s"), -307)
    end
  end
  
  if who == self then
    junme = junme + 1
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, junmk)
    end
  end
end
