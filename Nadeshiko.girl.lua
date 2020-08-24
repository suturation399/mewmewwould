function checkinit()
	
  if who ~= self or iter > 170 then
    return true
  end
  
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local suits = { "m", "p", "s" }
  local ssk = 0
  local sak = 0
  local rp = 0
  local ty = 0
  local ok = 1

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
    if init:closed():ct("p") > 9 or init:closed():ct("s") > 9 or init:closed():ct("m") > 9 then
      ok = 0
    end

    for i=0,3,1 do
      for _, suit in ipairs(suits) do
        ty = ty + init:ct(T34.new(5-i .. suit))
      end
      if ty > 9 then
        ok = 0
      end
      if ty <= 9 then
        ty = 0
      end
    end
	
  return ok == 0
end
