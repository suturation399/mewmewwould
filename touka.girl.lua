doge = 0
ok = 0
bakuhatsu = 0

function ondice()
  doge = rand:gen(50)
  
  if bakuhatsu ~= 0 then
    bakuhatsu = bakuhatsu + 1
  end
  
  if doge >= 45 then
    bakuhatsu = bakuhatsu + 1
  end
end

function checkinit()
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  ok = 0
  
  if who ~= self or iter > 87 then
    return true
  end
  
  if init:ct(T34.new("1y")) >= 2 then
    ok = 1
  end
  
  if init:ct(T34.new("2y")) >= 2 then
    ok = 1
  end
    
  if init:ct(T34.new("3y")) >= 2 then
    ok = 1
  end
  
  if rw == 1 or sw == 1 then
    if init:ct(T34.new("1f")) >= 2 then
      ok = 1
    end
  end
  
  if rw == 2 or sw == 2 then
    if init:ct(T34.new("2f")) >= 2 then
      ok = 1
    end
  end
  
  if rw == 3 or sw == 3 then
    if init:ct(T34.new("3f")) >= 2 then
      ok = 1
    end
  end
  
  if sw == 4 then
    if init:ct(T34.new("4f")) >= 2 then
      ok = 1
    end
  end
  
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  
  if ny <= 3 then
    ok = 1
  end
  
  return ok >= 1
end

function ondraw()
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local ctx = game:getformctx(self)
  local rule = game:getrule()
  
  if rinshan then
    return
  end
  ctx.ippatsu
  
  if who == self then
    junme = junme + 1
    if bakuhatsu ~= 0 then
      if steps >= 1 then
        for _, t in ipairs(hands:effa()) do
          mount:lighta(t, junme * 4)
        end
      else
        if ctx.riichi ~= 0 and form:han() >= 5 then
        for _, t in ipairs(hands:effa()) do
          mount:lighta(t, 96 - junme * 4)
        end
      end
    else
      
  end
end
