function onmonkey()
  junme = 0
end

function checkinit()
  if who ~= self or iter > 3 then
    return true
  end
  
  return init:step() <= 4
end

function ondraw()
  local hands = game:gethand(self)
  local effas = hands:effa()
  local steps = hands:step(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local ctx = game:getformctx(self)
  local rule = game:getrule()
  local drids = mount:getdrids()
  
  if who ~= self or rinshan then
    return
  end
  
  if who == self then
    junme = junme + 1
    for _, t in ipairs(effas) do
      local neffas = mount:remaina(t)
      mount:lighta(t, junme * neffas * 4)
    end
    if steps <= 1 then
      for _, t in ipairs(effas) do
        local ntenpai = mount:remaina(t)
        print(t, "理論殘枚數", ntenpai)
      end
    end
    if junme >= 3 then
      print("下家向聽數", handr:step())
      print("對家向聽數", handc:step())
      print("上家向聽數", handl:step())
    end
      if handr:ready() then
        for _, t in ipairs(handr:effa()) do
          local ntenpair = mount:remaina(t)
          print("危險牌", t, "摸牌前理論殘枚數", ntenpair)
          for _, t in ipairs(effas) do
            mount:lighta(t, junme * 4 + junme * 4 * ntenpair)
          end
          if steps ~= 0 then
            mount:lighta(t, 307 * ntenpair)
            mount:lightb(t, 307 * 2)
          else
            mount:lighta(t, -31)
            mount:lightb(t, -307 * 4)
          end
        end
      end
      if handc:ready() then
        for _, t in ipairs(handc:effa()) do
          local ntenpaic = mount:remaina(t)
          print("危險牌", t, "摸牌前理論殘枚數", ntenpaic)
          for _, t in ipairs(effas) do
            mount:lighta(t, junme * 4 + junme * 4 * ntenpaic)
          end
          if steps ~= 0 then
            mount:lighta(t, 307 * ntenpaic)
            mount:lightb(t, 307 * 2)
          else
            mount:lighta(t, -31)
            mount:lightb(t, -307 * 4)
          end
        end
      end
      if handl:ready() then
        for _, t in ipairs(handl:effa()) do
          local ntenpail = mount:remaina(t)
          print("危險牌為", t, "摸牌前理論殘枚數", ntenpail)
          for _, t in ipairs(effas) do
            mount:lighta(t, junme * 4 + junme * 4 * ntenpail)
          end
          if steps ~= 0 then
            mount:lighta(t, 307 * ntenpail)
            mount:lightb(t, 307 * 2)
          else
            mount:lighta(t, -31)
            mount:lightb(t, -307 * 4)
          end
        end
      end
    end
  end
end
