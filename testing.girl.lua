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
    print("摸牌前向聽數為", steps)
    for _, t in ipairs(effas) do
      mount:lighta(t, junme * 3)
    end
    if steps <= 1 then
      for _, t in ipairs(effas) do
        local ntenpai = mount:remaina(t)
        print(t, "預計牌山殘枚數為", ntenpai)
      end
    end
    if junme >= 4 then
      print("預計下家向聽數為", handr:step())
      print("預計對家向聽數為", handc:step())
      print("預計上家向聽數為", handl:step())
    end
    if junme >= 9 then
      if handr:ready() then
        for _, t in ipairs(handr:effa()) do
          local ntenpair = mount:remaina(t)
          print("預計危險牌為", t, "預計摸牌前牌山殘枚數為", ntenpair)
          if steps ~= 0 then
            mount:lighta(t, 307)
          else
            mount:lighta(t, -31)
          end
        end
      end
      if handc:ready() then
        for _, t in ipairs(handc:effa()) do
          local ntenpaic = mount:remaina(t)
          print("預計危險牌為", t)
          print("預計危險牌為", t, "預計摸牌前牌山殘枚數為", ntenpaic)
          if steps ~= 0 then
            mount:lighta(t, 307)
          else
            mount:lighta(t, -31)
          end
        end
      end
      if handl:ready() then
        for _, t in ipairs(handl:effa()) do
          local ntenpail = mount:remaina(t)
          print("預計危險牌為", t)
          print("預計危險牌為", t, "預計摸牌前牌山殘枚數為", ntenpail)
          if steps ~= 0 then
            mount:lighta(t, 307)
          else
            mount:lighta(t, -31)
          end
        end
      end
    end
  end
end
