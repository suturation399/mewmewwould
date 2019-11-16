function onmonkey()
  junme = 0
  tenjun = 0
end

function ondraw()
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local ctx = game:getformctx(self)
  
  if who ~= self or rinshan then
    return
  end

  if who == self then
    junme = junme + 1
    if steps >= 1 then
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junme * 4)
      end
    else
      tenjun = tenjun + 1
      if ctx.riichi == 0 then
        for _, t in ipairs(hands:effa()) do
          mount:lighta(t, 66 * tenjun - 33)
        end
      else
        for _, t in ipairs(hands:effa()) do
          mount:lighta(t, -5)
        end
      end
    end
  end
end
