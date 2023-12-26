ok = 0

function checkinit()
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  ok = 0
  
  if who ~= self or iter > 87 then
    return true
  end
  
  if init:ct(T34.new("1y")) == 2 and init:step4() >= 3 then
    ok = 1
  end
  
  if init:ct(T34.new("2y")) == 2 and init:step4() >= 3 then
    ok = 1
  end
    
  if init:ct(T34.new("3y")) == 2 and init:step4() >= 3 then
    ok = 1
  end
  
  if rw == 1 or sw == 1 then
    if init:ct(T34.new("1f")) == 2 and init:step4() >= 3 then
      ok = 1
    end
  end
  
  if rw == 2 or sw == 2 then
    if init:ct(T34.new("2f")) == 2 and init:step4() >= 3 then
      ok = 1
    end
  end
  
  if rw == 3 or sw == 3 then
    if init:ct(T34.new("3f")) == 2 and init:step4() >= 3 then
      ok = 1
    end
  end
  
  if sw == 4 then
    if init:ct(T34.new("4f")) == 2 and init:step4() >= 3 then
      ok = 1
    end
  end
  
  return ok >= 1
end

function ondraw()
  if who ~= self or rinshan then
    return
  end

  local hand = game:gethand(self)
  local closed = hand:closed()
  local barks = hand:barks()
  local steps = hand:step(self)
  local junmk = junme * 5
  
  local function isfish(meld)
    local t = meld:type()
    return t == "pon" or t == "daiminkan" or t == "kakan" or t == "chii"
  end

  local fishct = 0
  for _, m in ipairs(barks) do
    if isfish(m) then
      fishct = fishct + 1
    end
  end
  
  junme = junme + 1

  if fishct ~= 0 then
    if steps > 3 - fishct then
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junmk)
      end
    else
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, -2)
      end
    end
    if fishct >= 3 then
      accelerate(mount, hand, game:getriver(self), 500)
    end
  else
    for _, t in ipairs(hand:effa()) do
        mount:lighta(t, -2)
    end
  end
end

function accelerate(mount, hand, river, mk)
  local trashes = {}
  for _, t in ipairs(river) do
    trashes[t:id34()] = true
  end

  for _, t in ipairs(hand:effa()) do
    if not trashes[t:id34()] then
      mount:lighta(t, mk)
    end
  end
end
