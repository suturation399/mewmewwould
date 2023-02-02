function onmonkey()
  junme = 0
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
              mount:lighta(ear, junme * 2 * (6 - handc:step()))
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
              mount:lighta(ear, junme * 2 * (6 - handl:step()))
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
              mount:lighta(eac, junme * 2 * (6 - handr:step()))
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
              mount:lighta(eac, junme * 2 * (6 - handl:step()))
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
              mount:lighta(eal, junme * 2 * (6 - handr:step()))
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
              mount:lighta(eal, junme * 2 * (6 - handc:step()))
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
    if hands:step() ~= 0 then
      for _, eas in ipairs(hands:effa()) do
        if mount:remaina(eas) ~= 1 then
          mount:lighta(eas, junmk)
        else
          mount:lighta(eas, junmk * 16)
        end
        for _, ear in ipairs(handr:effa()) do
          if eas == ear then
            mount:lighta(ear, junmk * (6 - handr:step()))
          else
            mount:lighta(ear, -2)
          end
        end
        for _, eac in ipairs(handc:effa()) do
          if eas == eac then
            mount:lighta(eac, junmk * (6 - handc:step()))
          else
            mount:lighta(eac, -2)
          end
        end
        for _, eal in ipairs(handl:effa()) do
          if eas == eal then
            mount:lighta(eal, junmk * (6 - handl:step()))
          else
            mount:lighta(eal, -2)
          end
        end
      end
    else
      for _, eas in ipairs(hands:effa()) do
        if mount:remaina(eas) ~= 1 then
          mount:lighta(eas, 88 - junmk)
        else
          mount:lighta(eas, (88 - junmk) * 16)
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
