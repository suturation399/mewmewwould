function checkinit()
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local ok = 0
  
  if who ~= self or iter > 87 then
    return true
  end
  
  if init:ct(T34.new("1y")) >= 2 and init:step4() >= 3 and init:step4() <= 4 then
    ok = 1
  else
  end
  
  if init:ct(T34.new("2y")) >= 2 and init:step4() >= 3 and init:step4() <= 4 then
    ok = 1
  end
    
  if init:ct(T34.new("3y")) >= 2 and init:step4() >= 3 and init:step4() <= 4 then
    ok = 1
  end
  
  if init:ct(T34.new("4f")) >= 2 and init:step4() >= 3 and init:step4() <= 4 then
    ok = 1
  end
  
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
    return ny <= 3 and init:step() >= 3 and init:step() <= 4
  end
end

function ondraw()
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local junmk = junme * 4
  local ctx = game:getformctx(self)

  for _, t in ipairs(drids) do
    nd = hands:ctaka5() + hands:ct(t:dora())
  end

  local dormk = ((nd - 2) * -45) - (4 * junme) - 24
  
  if who ~= self or rinshan or ctx.ippatsu then
    return
  end

  if who == self then
    junme = junme + 1
    if steps >= 1 then
      mount:lighta(T37.new("0p"), dormk)
      mount:lighta(T37.new("0s"), dormk)
      mount:lighta(T37.new("0m"), dormk)
      for _, t in ipairs(drids) do
        mount:lighta(t:dora(), dormk)
      end
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junmk)
      end
    else
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, 96 - junmk)
      end
    end
  end
end
