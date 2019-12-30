doge = 0

function ondice()
  doge = rand:gen(3)
end

function onmonkey()
  local exist = exists[self:index()]
  local extra = game:getextraround()
  status = doge
  junme = 0
  
  if extra < 3 then
    if status <= 1 then
      for i = 1, 9 do
        exist:incmk(T34.new(i .. "m"), 66)
      end
    end
    if status == 2 then
      for i = 1, 9 do
        exist:incmk(T34.new(i .. "p"), 66)
      end
    end
    if status >= 3 then
      for i = 1, 9 do
        exist:incmk(T34.new(i .. "p"), -39)
        exist:incmk(T34.new(i .. "m"), -39)
      end
      for i = 1, 4 do
        exist:incmk(T34.new(i .. "f"), -39)
      end
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -39)
      end
    end
  else
    for i = 1, 9 do
      exist:incmk(T34.new(i .. "p"), -39)
      exist:incmk(T34.new(i .. "s"), -39)
      exist:incmk(T34.new(i .. "m"), -39)
    end
  end
end

function checkinit()
  local extra = game:getextraround()
  
  if who ~= self or iter > 399 then
    return true
  end

  if extra < 3 then
    if status <= 1 then
      return (init:closed():ct("m") == 13 and init:step() >= 1)
    end
    if status == 2 then
      return (init:closed():ct("p") == 13 and init:step() >= 1)
    end
    if status >= 3 then
      return (init:closed():ct("s") == 13 and init:step() >= 1)
    end
  else
    return (init:closed():ct("s") == 0 and init:closed():ct("p") == 0 and init:closed():ct("s") == 0 and init:step() >= 1)
  end
end

function ondraw()
  local hand = game:gethand(self)
  local effas = hand:effa(self)

  if who ~= self or rinshan then
    return
  end
  
  local np = hand:ct(T34.new("1p")) + hand:ct(T34.new("2p")) + hand:ct(T34.new("3p")) + hand:ct(T34.new("4p")) + hand:ct(T34.new("5p")) + hand:ct(T34.new("6p")) + hand:ct(T34.new("7p")) + hand:ct(T34.new("8p")) + hand:ct(T34.new("9p"))
  local nm = hand:ct(T34.new("1m")) + hand:ct(T34.new("2m")) + hand:ct(T34.new("3m")) + hand:ct(T34.new("4m")) + hand:ct(T34.new("5m")) + hand:ct(T34.new("6m")) + hand:ct(T34.new("7m")) + hand:ct(T34.new("8m")) + hand:ct(T34.new("9m"))
  local ns = hand:ct(T34.new("1s")) + hand:ct(T34.new("2s")) + hand:ct(T34.new("3s")) + hand:ct(T34.new("4s")) + hand:ct(T34.new("5s")) + hand:ct(T34.new("6s")) + hand:ct(T34.new("7s")) + hand:ct(T34.new("8s")) + hand:ct(T34.new("9s"))
  local nz = hand:ct(T34.new("1f")) + hand:ct(T34.new("2f")) + hand:ct(T34.new("3f")) + hand:ct(T34.new("4f")) + hand:ct(T34.new("1y")) + hand:ct(T34.new("2y")) + hand:ct(T34.new("3y"))

  if np <= 3 then
    for i = 1, 9 do
      mount:lighta(T34.new(i .. "p"), -69)
    end
  end
  if nm <= 3 then
    for i = 1, 9 do
      mount:lighta(T34.new(i .. "m"), -69)
    end
  end  
  if ns <= 3 then
    for i = 1, 9 do
      mount:lighta(T34.new(i .. "s"), -69)
    end
  end
  if nz <= 3 then
    for i = 1, 4 do
      mount:lighta(T34.new(i .. "f"), -69)
    end
    for i = 1, 3 do
      mount:lighta(T34.new(i .. "y"), -69)
    end
  end
  junme = junme + 1
  if junme < 6 then
    for _, t in ipairs(hand:effa()) do
      mount:lighta(t, -39)
    end
  end
end
    
