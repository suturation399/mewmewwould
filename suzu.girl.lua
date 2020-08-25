doge = 0
bakuhatsu = 0

function ondice()
  doge = rand:gen(40)
  
  if bakuhatsu ~= 0 then
    bakuhatsu = bakuhatsu + 1
  end
  
  if doge >= 27 then
    bakuhatsu = bakuhatsu + 1
  end
  
end

function onmonkey()
  status = doge
  junme = 1
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local exist = exists[self:index()]
  
  if bakuhatsu ~= 0 then
    exist:incmk(T34.new("6m"), 80)
    exist:incmk(T34.new("7m"), 230)
    exist:incmk(T34.new("8m"), 230)
    exist:incmk(T34.new("9m"), 330)
    exist:incmk(T34.new("6p"), 80)
    exist:incmk(T34.new("7p"), 230)
    exist:incmk(T34.new("8p"), 230)
    exist:incmk(T34.new("9p"), 330)
    exist:incmk(T34.new("6s"), 80)
    exist:incmk(T34.new("7s"), 230)
    exist:incmk(T34.new("8s"), 230)
    exist:incmk(T34.new("9s"), 330)
    if bakuhatsu == 1 then
      print("感覺似乎不錯呢")
    end
  end
end

function checkinit()
  local hands = game:gethand(self)
  local ok = 0
  
  if bakuhatsu == 0 or who ~= self or iter > 99 then
    return true
  end
  
  for _, t in ipairs(T34.all) do
    if init:ct(t) == 4 then
      ok = 1
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
    if bakuhatsu == 0 then
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junme * 4)
      end
    else
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junme * 5)
      end
      for i = 1, 5 do
        mount:lighta(T34.new(i .. "m"), junme * -12)
        mount:lighta(T34.new(i .. "p"), junme * -12)
        mount:lighta(T34.new(i .. "s"), junme * -12)
      end
      if hands:step() ~= 0 then
        for _, t in ipairs(T34.all) do
          if hands:ct(t) == 3 then
            mount:lighta(t, -330)
          end
        end
      end
    end
  end
end
      
