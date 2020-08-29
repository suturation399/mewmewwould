doge = 0
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
  local hands = game:gethand(self)
  local ok = 0
  
  if bakuhatsu == 0 or who == self or iter > 500 then
    return true
  end
 
  return ok == 1
end

function ondraw()
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local ctx = game:getformctx(self)
  
  if rinshan then
    return
  end
  ctx.ippatsu
  
  if who == self then
    junme = junme + 1
    if steps >= 1 then
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junme * 4)
      end
    else
      if 
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, 96 - junme * 4)
      end
    end
  end
end
