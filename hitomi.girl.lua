function onmonkey()
  junme = 0
  local exist = exists[self:index()]
  
  exist:incmk(T37.new("0p"), 70)
  exist:incmk(T37.new("0s"), 70)
  exist:incmk(T37.new("0m"), 70)
end

function ondraw()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local drids = mount:getdrids()
  local junmk = junme * 4
  local jdomk = 250 - junme * 12

  if who ~= self or rinshan then
    return
  end

  if who == self and steps >= 1 then
    junme = junme + 1
    mount:lighta(T37.new("0p"), jdomk)
    mount:lighta(T37.new("0s"), jdomk)
    mount:lighta(T37.new("0m"), jdomk)
    for _, t in ipairs(drids) do
      mount:lighta(t:dora(), jdomk)
    end
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, junmk)
    end
    if (junme == 1 and steps >= 5) or junme == 12 then
      print("不管怎樣都是政治的錯")
    end
  end
      
  if who == self and steps == 0 then
    junme = junme + 1
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, -10)
     end
    if junme == 17 then
      print("不管怎樣都是政府的錯")
    end
  end
end
