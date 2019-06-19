print("吾乃母儀天下、親民和藹、大數據研究分析機器人，簡稱母親大人")
a = 1103515245
c = 12345
m = 2 ^ 32 - 1
seed = 1

function random()
  seed = (a * seed + c) % m
  return seed
end

function onmonkey()
  junme = 0
  print("啟動向聽計算程序")
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
    if steps >= 1 then
      reduce = random() % 4
      if reduce >= 1 then
        for _, t in ipairs(effas) do
          mount:lighta(t, -4500)
        end
        print("手牌向聽數計算結果為", steps)
      else
        for _, t in ipairs(effas) do
          mount:lighta(t, 4500)
        end
        if steps - 1 >= 1 then
          print("手牌向聽數計算結果為", steps - 1)
        else
          print("啟動聽牌計算程序")
        end
      end
    else
      for _, t in ipairs(effas) do
        local ntenpai = mount:remaina(t)
        print("聽牌計算結果為", t)
        print("預計牌山殘枚數為", ntenpai)
        for _, t in ipairs(effas) do
          mount:lighta(t, junme * 4)
        end
      end
    end
    if junme == 7 then
      print("啟動他家進展計算程序")
    end
    if junme >= 8 and junme <= 13 then
      print("預計下家向聽數為", handr:step())
      print("預計對家向聽數為", handc:step())
      print("預計上家向聽數為", handl:step())
    end
    if junme == 14 then
      print("正在計算各牌的危險性...")
    end
    if junme >= 15 then
      if handr:ready() then
        for _, t in ipairs(handr:effa()) do
          print("預計危險牌為", t)
        end
      end
      if handc:ready() then
        for _, t in ipairs(handc:effa()) do
          print("預計危險牌為", t)
        end
      end
      if handl:ready() then
        for _, t in ipairs(handl:effa()) do
          print("預計危險牌為", t)
        end
      end
    end
  end
end
