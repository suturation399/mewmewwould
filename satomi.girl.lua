function onmonkey()
  junme = 0
end

function ondraw()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local junmk = junme * 2

  if who ~= self or rinshan then
    return
  end

  if who == self and steps >= 1 then
    junme = junme + 1
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, junmk)
    end
    if junme == 1 and steps <= 2 then
      print("哇哈哈")
    end
  end
      
  if who == self and steps == 0 then
    junme = junme + 1
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, 4)
     end
    if junme == 6 then
      print("哇哈哈")
    end
  end
end
