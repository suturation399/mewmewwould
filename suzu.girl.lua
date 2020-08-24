doge = 0
bakhatsu = 0


function ondice()
  doge = rand:gen(50)
  
  if doge >= 38 then
    bakuhatsu = bakuhatsu + 1
  end
end

function onmonkey()
  status = doge
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local exist = exists[self:index()]
  
  if bakuhatsu ~= 0 then
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
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local suits = { "m", "p", "s" }
  local ssk = 0
  local sak = 0
  local rp = 0
  local ty = 0
  local ok = 1
  
  if who ~= self or iter > 330 then
    return true
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
    if ssk > 6 then
      ok = 0
    end
    if ssk <= 6 then
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
  if sak > 5 then
    ok = 0
  end
  if sak <= 5 then
    sak = 0
  end
  
  for _, suit in ipairs(suits) do
    for i=2,7,1 do
      if init:ct(T34.new((i-1) .. suit)) > 1 and init:ct(T34.new((i) .. suit)) > 1 and init:ct(T34.new((i+1) .. suit)) > 1 then
        ok = 0
      end
    end
  end
  
  return ok == 0 
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
      mount:lighta(t, junme * 3)
    end
    if bakuhatsu >= 1 then
      for tars, mk in pairs(powers) do
        for _, t in ipairs(tars) do
          mount:lighta(T34.new(t), mk)
        end
      end
    end
  end
end
      
