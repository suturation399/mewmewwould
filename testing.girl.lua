ok = 0

function checkinit()
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  ok = 0
  
  if who ~= self or iter > 20 then
    return true
  end
  
  if init:ct(T34.new("1y")) >= 2 and init:step() <= 5 then
    ok = 1
  end
  
  if init:ct(T34.new("2y")) >= 2 and init:step() <= 5 then
    ok = 1
  end
    
  if init:ct(T34.new("3y")) >= 2 and init:step() <= 5 then
    ok = 1
  end
  
  if rw == 1 or sw == 1 then
    if init:ct(T34.new("1f")) >= 2 and init:step() <= 5 then
      ok = 1
    end
  end
  
  if rw == 2 or sw == 2 then
    if init:ct(T34.new("2f")) >= 2 and init:step() <= 5 then
      ok = 1
    end
  end
  
  if rw == 3 or sw == 3 then
    if init:ct(T34.new("3f")) >= 2 and init:step() <= 5 then
      ok = 1
    end
  end
  
  if sw == 4 then
    if init:ct(T34.new("4f")) >= 2 and init:step() <= 5 then
      ok = 1
    end
  end
  
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  
  if ny <= 3 and init:step() <= 5 then
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
  local junmk = junme * 4
  
  if rinshan then
    return
  end
  
  if who == self:right() then
    if handr:step() ~= 0 then
      if handc:step() == 0 then
        for _, eac in ipairs(handc:effa()) do
          mount:lighta(eac, junmk * 32 * (handr:step() - 1))
        end
      else
        for _, ear in ipairs(handr:effa()) do
          for _, eac in ipairs(handc:effa()) do
            if ear == eac then
              mount:lighta(ear, 16)
            else
              mount:lighta(ear, -2)
            end
          end
        end
      end
      if handl:step() == 0 then
        for _, eal in ipairs(handl:effa()) do
          mount:lighta(eal, junmk * 32 * (handr:step() - 1))
        end
      else
        for _, ear in ipairs(handr:effa()) do
          for _, eal in ipairs(handl:effa()) do
            if ear == eal then
              mount:lighta(ear, 16)
            else
              mount:lighta(ear, -2)
            end
          end
        end
      end
    end
  end
  
  if who == self:cross() then
    if handc:step() ~= 0 then
      if handr:step() == 0 then
        for _, ear in ipairs(handr:effa()) do
          mount:lighta(ear, junmk * 32 * (handc:step() - 1))
        end
      else
        for _, eac in ipairs(handc:effa()) do
          for _, ear in ipairs(handr:effa()) do
            if eac == ear then
              mount:lighta(eac, 16)
            else
              mount:lighta(eac, -2)
            end
          end
        end
      end
      if handl:step() == 0 then
        for _, eal in ipairs(handl:effa()) do
          mount:lighta(eal, junmk * 32 * (handc:step() - 1))
        end
      else
        for _, eac in ipairs(handc:effa()) do
          for _, eal in ipairs(handl:effa()) do
            if eac == eal then
              mount:lighta(eac, 16)
            else
              mount:lighta(eac, -2)
            end
          end
        end
      end
    end
  end
  
  if who == self:left() then
    if handl:step() ~= 0 then
      if handr:step() == 0 then
        for _, ear in ipairs(handr:effa()) do
          mount:lighta(ear, junmk * 32 * (handl:step() - 1))
        end
      else
        for _, eal in ipairs(handl:effa()) do
          for _, ear in ipairs(handr:effa()) do
            if eal == ear then
              mount:lighta(eal, 16)
            else
              mount:lighta(eal, -2)
            end
          end
        end
      end
      if handc:step() == 0 then
        for _, eac in ipairs(handc:effa()) do
          mount:lighta(eac, junmk * 32 * (handl:step() - 1))
        end
      else
        for _, eal in ipairs(handl:effa()) do
          for _, eac in ipairs(handc:effa()) do
            if eal == eac then
              mount:lighta(eal, 16)
            else
              mount:lighta(eal, -2)
            end
          end
        end
      end
    end
  end
  
  if who == self then
    junme = junme + 1
    for _, eas in ipairs(hands:effa()) do
      if mount:remaina(eas) ~= 1 then
        mount:lighta(eas, junmk)
      else
        mount:lighta(eas, junmk * 16)
      end
      for _, ear in ipairs(handr:effa()) do
        if eas == ear then
          mount:lighta(ear, junmk * 2 * (6 - handr:step()))
        else
          mount:lighta(ear, -2)
        end
      end
      for _, eac in ipairs(handc:effa()) do
        if eas == eac then
          mount:lighta(eac, junmk * 2 * (6 - handc:step()))
        else
          mount:lighta(eac, -2)
        end
      end
      for _, eal in ipairs(handl:effa()) do
        if eas == eal then
          mount:lighta(eal, junmk * 2 * (6 - handl:step()))
        else
          mount:lighta(eal, -2)
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
    if handr:step() < 1 then
      for _, t in ipairs(handr:effa()) do
        local ntenpair = mount:remaina(t)
        print("下家聽牌", t, "應該還有", ntenpair, "枚")
      end
    end
    if handc:step() < 1 then
      for _, t in ipairs(handc:effa()) do
        local ntenpaic = mount:remaina(t)
        print("對家聽牌", t, "應該還有", ntenpaic, "枚")
      end
    end
    if handl:step() < 1 then
      for _, t in ipairs(handl:effa()) do
        local ntenpail = mount:remaina(t)
        print("上家聽牌", t, "應該還有", ntenpail, "枚")
      end
    end
    for _, t in ipairs(hands:effa()) do
      local ntenpai = mount:remaina(t)
      if mount:remaina(t) == 0 then
        print( t, "我應該摸不到了")
      end
    end
  end
end
