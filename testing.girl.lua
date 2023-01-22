ok = 0

function checkinit()
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  ok = 0
  
  if who ~= self or iter > 39 then
    return true
  end
  
  if init:ct(T34.new("1y")) >= 2 and init:step4() <= 4 then
    ok = 1
  end
  
  if init:ct(T34.new("2y")) >= 2 and init:step4() <= 4 then
    ok = 1
  end
    
  if init:ct(T34.new("3y")) >= 2 and init:step4() <= 4 then
    ok = 1
  end
  
  if rw == 1 or sw == 1 then
    if init:ct(T34.new("1f")) >= 2 and init:step4() <= 4 then
      ok = 1
    end
  end
  
  if rw == 2 or sw == 2 then
    if init:ct(T34.new("2f")) >= 2 and init:step4() <= 4 then
      ok = 1
    end
  end
  
  if rw == 3 or sw == 3 then
    if init:ct(T34.new("3f")) >= 2 and init:step4() <= 4 then
      ok = 1
    end
  end
  
  if sw == 4 then
    if init:ct(T34.new("4f")) >= 2 and init:step4() <= 4 then
      ok = 1
    end
  end
  
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  
  if ny <= 3 and init:step() <= 4 then
    ok = 1
  end
  
  return ok >= 1
end

function ondraw()
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local handl = game:gethand(self:left())
  local handc = game:gethand(self:cross())
  local handr = game:gethand(self:right())
  local steps = hands:step(self)
  local junmk = junme * 3
  
  if who ~= self or rinshan then
    return
  end
  
  if who == self then
    junme = junme + 1
    for _, eas in ipairs(hands:effa()) do
      for _, ear in ipairs(handr:effa()) do
        if eas == ear then
          if mount:remaina(eas) > 1 then
            mount:lighta(eas, junmk * 3)
          else
            mount:lighta(eas, junmk * 9)
          end
        else
          mount:lighta(eas, junmk)
          mount:lighta(ear, junmk * -1)
        end
      end
      for _, eac in ipairs(handc:effa()) do
        if eas == eac then
          if mount:remaina(eas) > 1 then
            mount:lighta(eas, junmk * 3)
          else
            mount:lighta(eas, junmk * 9)
          end
        else
          mount:lighta(eas, junmk)
          mount:lighta(eac, junmk * -1)
        end
      end
      for _, eal in ipairs(handl:effa()) do
        if eas == eal then
          if mount:remaina(eas) > 1 then
            mount:lighta(eas, junmk * 3)
          else
            mount:lighta(eas, junmk * 9)
          end
        else
          mount:lighta(eas, junmk)
          mount:lighta(eal, junmk * -1)
        end
      end
    end
  end
end

function ongameevent()
  if event.type == "drawn" then
    read(mount, game, who)
  end
end

function read(mount, game, who)
  local hands = game:gethand(self)
  local handl = game:gethand(self:left())
  local handc = game:gethand(self:cross())
  local handr = game:gethand(self:right())
  local mount = game:getmount()
  local drids = mount:getdrids()
  
  if event.args.who == self then
    if handr:step() <= 1 then
      print("下家感覺", handr:step(), "向聽了")
      for _, t in ipairs(handr:effa()) do
        local ntenpair = mount:remaina(t)
        print("下家有效牌", t, "山存", ntenpair, "枚")
      end
    end
    if handc:step() <= 1 then
      print("對家感覺", handc:step(), "向聽了")
      for _, t in ipairs(handc:effa()) do
        local ntenpaic = mount:remaina(t)
        print("對家有效牌", t, "山存", ntenpaic, "枚")
      end
    end
    if handl:step() <= 1 then
      print("上家感覺", handl:step(), "向聽了")
      for _, t in ipairs(handl:effa()) do
        local ntenpail = mount:remaina(t)
        print("上家有效牌", t, "山存", ntenpail, "枚")
      end
    end
    if hands:step() <= 1 then
      for _, t in ipairs(hands:effa()) do
        local ntenpai = mount:remaina(t)
        print("自家有效牌", t, "山存", ntenpai, "枚")
      end
    end
  end
end
