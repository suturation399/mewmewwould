junme = 0

unction onmonkey()
  junme = 0
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
