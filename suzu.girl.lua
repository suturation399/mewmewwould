doge = 0
bakuhatsu = 1


function ondice()
  doge = rand:gen(50)
  
  if doge >= 1 then
    bakuhatsu = bakuhatsu + 1
  end
end

function onmonkey()
  status = doge
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local exist = exists[self:index()]
  
  print(status)
  print(bakuhatsu)
  if bakuhatsu ~= 1 then
    print("感覺似乎不錯呢")
    exist:incmk(T34.new("6m"), 80)
    exist:incmk(T34.new("7m"), 130)
    exist:incmk(T34.new("8m"), 230)
    exist:incmk(T34.new("9m"), 330)
    exist:incmk(T34.new("6p"), 80)
    exist:incmk(T34.new("7p"), 130)
    exist:incmk(T34.new("8p"), 230)
    exist:incmk(T34.new("9p"), 330)
    exist:incmk(T34.new("6s"), 80)
    exist:incmk(T34.new("7s"), 130)
    exist:incmk(T34.new("8s"), 230)
    exist:incmk(T34.new("9s"), 330)
  end
end

function checkinit()
  local hands = game:gethand(self)
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local suits = { "m", "p", "s" }
  local ssk = 0
  local sak = 0
  local rp = 0
  local ty = 0
  local ok = 1
  
  if bakuhatsu == 1 or who ~= self or iter > 330 then
    return true
  end
  
  if hands:step7() <= 2 then
    ok = 0
  end
  
  for i=2,7,1 do
    for _, suit in ipairs(suits) do
      if init:ct(T34.new(i-1 .. suit)) >0 then
        ssk = ssk + 1
      end
      if init:ct(T34.new(i .. suit)) >0 then
        ssk = ssk + 1
      end
      if init:ct(T34.new(i+1 .. suit)) >0 then
        ssk = ssk + 1
      end
    end
    if ssk > 8 then
      ok = 0
    end
    if ssk <= 8 then
      ssk = 0
    end
  end
  
  for _, t in ipairs(T34.all) do
    if init:ct(t) > 2 then
      sak = sak + 3
    end
    if init:ct(t) == 2 then
      sak = sak + 1
    end
  end
  if sak > 8 then
    ok = 0
  end
  if sak <= 8 then
    sak = 0
  end
  
  for _, suit in ipairs(suits) do
    for i=2,7,1 do
      if init:ct(T34.new((i-1) .. suit)) > 1 and init:ct(T34.new((i) .. suit)) > 1 and init:ct(T34.new((i+1) .. suit)) > 1 then
        ok = 0
      end
    end
  end
  
  local ns = init:ct(T34.new("1m")) + init:ct(T34.new("2m")) + init:ct(T34.new("3m")) + init:ct(T34.new("4m")) + init:ct(T34.new("5m")) + init:ct(T34.new("1p")) + init:ct(T34.new("2p")) + init:ct(T34.new("3p")) + init:ct(T34.new("4p")) + init:ct(T34.new("5p")) + init:ct(T34.new("1s")) + init:ct(T34.new("2s")) + init:ct(T34.new("3s")) + init:ct(T34.new("4s")) + init:ct(T34.new("5s"))
  
  return ok == 0 and ns <= 2
end


function ondraw()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local drids = mount:getdrids()
  
  if who ~= self or rinshan then
    return
  end

  if who == self then
    junme = junme + 1
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, junme * 4 * bakuhatsu)
    end
    if bakuhatsu ~= 1 then
      for i = 1, 5 do
        mount:lighta(T34.new(i .. "m"), junme * - 9)
        mount:lighta(T34.new(i .. "p"), junme * - 9)
        mount:lighta(T34.new(i .. "s"), junme * - 9)
      end
    end
  end
end
      
