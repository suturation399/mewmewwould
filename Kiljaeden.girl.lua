realround = 0

function onmonkey()
  realround = realround + 1
  junme = 0
  local existself = exists[self:index()]
  local existl = exists[self:left():index()]
  local existc = exists[self:cross():index()]
  local existr = exists[self:right():index()]
  local rule = game:getrule()
  local rw = game:getextraround()
  local Armageddon = (rule.roundlimit == 4 and (rw == 2 or realround >= 6)) or (rule.roundlimit == 8 and (rw == 3 or realround >= 13))
  
  
  if Armageddon then
    for i = 1, 3 do
      existself:incmk(T34.new(i .. "y"), 420)
      existl:incmk(T34.new(i .. "y"), -30)
      existc:incmk(T34.new(i .. "y"), -30)
      existr:incmk(T34.new(i .. "y"), -30)
    end
  else
    for _, t in ipairs(T34.all) do
      existself:incmk(t, 888888)
      existl:incmk(t, 888888)
      existc:incmk(t, 888888)
      existr:incmk(t, 888888)
    end
  end
end

function checkinit()
  local rule = game:getrule()
  local rw = game:getextraround()
  local Armageddon = (rule.roundlimit == 4 and (rw == 2 or realround >= 6)) or (rule.roundlimit == 8 and (rw == 3 or realround >= 13))
  
  if Armageddon then
    if iter > 100 then
      return true
    end
    if who ~= self then
      return init:step() >= 3
    end
    return init:ct(T34.new("1y")) >= 3 and init:ct(T34.new("2y")) >= 3 and init:ct(T34.new("3y")) >= 3
  else
    return iter > 133
  end
end

function ondraw()
  local hand = game:gethand(who)
  local effas = hand:effa()
  local rule = game:getrule()
  local rw = game:getextraround()
  local Armageddon = (rule.roundlimit == 4 and (rw == 2 or realround >= 6)) or (rule.roundlimit == 8 and (rw == 3 or realround >= 13))
  
  if Armageddon then
    if who ~= self then
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, (3 - hand:step()) * 88)
      end
    end
    if who == self then
      junme = junme + 1
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * 8)
      end
    end
  else
    for _, t in ipairs(T34.all) do
      mount:lighta(t, 888888)
      mount:lightb(t, 888888)
    end
  end
end
