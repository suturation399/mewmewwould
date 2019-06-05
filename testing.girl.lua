function checkinit()
  junme = 0
  local selfwind = game:getselfwind(self)
  local inp = init:closed():ct("p")
  local inm = init:closed():ct("m")
  local ins = init:closed():ct("s")
  
  if who ~= self or iter > 4 then
    return true
  end

  if who == self and selfwind == 1 then
    return init:step() == 3 and inp == inm and inm == ins
  end

  if who == self and selfwind ~= 1 then
    return init:step() >= 3 and init:step() <= 4 and inp == inm and inm == ins
  end
end

function ondraw()
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local junmk = junme * 4

  for _, t in ipairs(drids) do
    nd = hands:ctaka5() + hands:ct(t:dora())
  end

  local dormk = (nd - 2) * -84 - 14
  
  if who ~= self or rinshan then
    return
  end

  if who == self then
    junme = junme + 1
    mount:lighta(T37.new("0p"), dormk)
    mount:lighta(T37.new("0s"), dormk)
    mount:lighta(T37.new("0m"), dormk)
    for _, t in ipairs(drids) do
      mount:lighta(t:dora(), dormk)
    end
    if steps >= 1 then
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junmk)
      end
    else
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, 4)
      end
    end
  end
end
