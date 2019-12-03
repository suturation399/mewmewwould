dogem = 0
dogep = 0
doges = 0

function ondice()
  dogem = rand:gen(7)
  dogep = rand:gen(7)
  doges = rand:gen(7)
end

function onmonkey()
  cutm = dogem
  cutp = dogep
  cuts = doges
  local exists = exists[self:index()]
  local existl = exists[self:left():index()]
  local existc = exists[self:cross():index()]
  local existr = exists[self:right():index()]
  local cutmk = -472
  
  if cutm == 1 then
    print("2m")
    exists:incmk(T34.new("2m"), cutmk)
    existl:incmk(T34.new("2m"), cutmk)
    existc:incmk(T34.new("2m"), cutmk)
    existr:incmk(T34.new("2m"), cutmk)
  end
  if cutm == 2 then
    print("3m")
    exists:incmk(T34.new("3m"), cutmk)
    existl:incmk(T34.new("3m"), cutmk)
    existc:incmk(T34.new("3m"), cutmk)
    existr:incmk(T34.new("3m"), cutmk)
  end
  if cutm == 3 then
    print("4m")
    exists:incmk(T34.new("4m"), cutmk)
    existl:incmk(T34.new("4m"), cutmk)
    existc:incmk(T34.new("4m"), cutmk)
    existr:incmk(T34.new("4m"), cutmk)
  end
  if cutm == 4 then
    print("5m")
    exists:incmk(T34.new("5m"), cutmk)
    existl:incmk(T34.new("5m"), cutmk)
    existc:incmk(T34.new("5m"), cutmk)
    existr:incmk(T34.new("5m"), cutmk)
  end
  if cutm == 5 then
    print("6m")
    exists:incmk(T34.new("6m"), cutmk)
    existl:incmk(T34.new("6m"), cutmk)
    existc:incmk(T34.new("6m"), cutmk)
    existr:incmk(T34.new("6m"), cutmk)
  end
  if cutm == 6 then
    print("7m")
    exists:incmk(T34.new("7m"), cutmk)
    existl:incmk(T34.new("7m"), cutmk)
    existc:incmk(T34.new("7m"), cutmk)
    existr:incmk(T34.new("7m"), cutmk)
  end
  if cutm == 7 then
    print("8m")
    exists:incmk(T34.new("8m"), cutmk)
    existl:incmk(T34.new("8m"), cutmk)
    existc:incmk(T34.new("8m"), cutmk)
    existr:incmk(T34.new("8m"), cutmk)
  end
  
  if cutp == 1 then
    print("2p")
    exists:incmk(T34.new("2p"), cutmk)
    existl:incmk(T34.new("2p"), cutmk)
    existc:incmk(T34.new("2p"), cutmk)
    existr:incmk(T34.new("2p"), cutmk)
  end
  if cutp == 2 then
    print("3p")
    exists:incmk(T34.new("3p"), cutmk)
    existl:incmk(T34.new("3p"), cutmk)
    existc:incmk(T34.new("3p"), cutmk)
    existr:incmk(T34.new("3p"), cutmk)
  end
  if cutp == 3 then
    print("4p")
    exists:incmk(T34.new("4p"), cutmk)
    existl:incmk(T34.new("4p"), cutmk)
    existc:incmk(T34.new("4p"), cutmk)
    existr:incmk(T34.new("4p"), cutmk)
  end
  if cutp == 4 then
    print("5p")
    exists:incmk(T34.new("5p"), cutmk)
    existl:incmk(T34.new("5p"), cutmk)
    existc:incmk(T34.new("5p"), cutmk)
    existr:incmk(T34.new("5p"), cutmk)
  end
  if cutp == 5 then
    print("6p")
    exists:incmk(T34.new("6p"), cutmk)
    existl:incmk(T34.new("6p"), cutmk)
    existc:incmk(T34.new("6p"), cutmk)
    existr:incmk(T34.new("6p"), cutmk)
  end
  if cutp == 6 then
    print("7p")
    exists:incmk(T34.new("7p"), cutmk)
    existl:incmk(T34.new("7p"), cutmk)
    existc:incmk(T34.new("7p"), cutmk)
    existr:incmk(T34.new("7p"), cutmk)
  end
  if cutp == 7 then
    print("8p")
    exists:incmk(T34.new("8p"), cutmk)
    existl:incmk(T34.new("8p"), cutmk)
    existc:incmk(T34.new("8p"), cutmk)
    existr:incmk(T34.new("8p"), cutmk)
  end
  
  if cuts == 1 then
    print("2s")
    exists:incmk(T34.new("2s"), cutmk)
    existl:incmk(T34.new("2s"), cutmk)
    existc:incmk(T34.new("2s"), cutmk)
    existr:incmk(T34.new("2s"), cutmk)
  end
  if cuts == 2 then
    print("3s")
    exists:incmk(T34.new("3s"), cutmk)
    existl:incmk(T34.new("3s"), cutmk)
    existc:incmk(T34.new("3s"), cutmk)
    existr:incmk(T34.new("3s"), cutmk)
  end
  if cuts == 3 then
    print("4s")
    exists:incmk(T34.new("4s"), cutmk)
    existl:incmk(T34.new("4s"), cutmk)
    existc:incmk(T34.new("4s"), cutmk)
    existr:incmk(T34.new("4s"), cutmk)
  end
  if cuts == 4 then
    print("5s")
    exists:incmk(T34.new("5s"), cutmk)
    existl:incmk(T34.new("5s"), cutmk)
    existc:incmk(T34.new("5s"), cutmk)
    existr:incmk(T34.new("5s"), cutmk)
  end
  if cuts == 5 then
    print("6s")
    exists:incmk(T34.new("6s"), cutmk)
    existl:incmk(T34.new("6s"), cutmk)
    existc:incmk(T34.new("6s"), cutmk)
    existr:incmk(T34.new("6s"), cutmk)
  end
  if cuts == 6 then
    print("7s")
    exists:incmk(T34.new("7s"), cutmk)
    existl:incmk(T34.new("7s"), cutmk)
    existc:incmk(T34.new("7s"), cutmk)
    existr:incmk(T34.new("7s"), cutmk)
  end
  if cuts == 7 then
    print("8s")
    exists:incmk(T34.new("8s"), cutmk)
    existl:incmk(T34.new("8s"), cutmk)
    existc:incmk(T34.new("8s"), cutmk)
    existr:incmk(T34.new("8s"), cutmk)
  end
end
  
function checkinit()
  junme = 0
  
  if iter > 333 then
    return true
  end

  if who ~= self then
    return init:step() >= 5
  end
  
  if who == self then
    return init:step4() > init:step7()
  end
end

function ondraw()
  local hand = game:gethand(who)
  local effas = hand:effa()
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  
  if mount:remainpii() == 70 then
    if cutm == 1 then
      mount:loadb(T37.new("2m"), 4)
    end
    if cutm == 2 then
      mount:loadb(T37.new("3m"), 4)
    end
    if cutm == 3 then
      mount:loadb(T37.new("4m"), 4)
    end
    if cutm == 4 then
      mount:loadb(T37.new("5m"), 4)
    end
    if cutm == 5 then
      mount:loadb(T37.new("6m"), 4)
    end
    if cutm == 6 then
      mount:loadb(T37.new("7m"), 4)
    end
    if cutm == 7 then
      mount:loadb(T37.new("8m"), 4)
    end
    if cutp == 1 then
      mount:loadb(T37.new("2p"), 4)
    end
    if cutp == 2 then
      mount:loadb(T37.new("3p"), 4)
    end
    if cutp == 3 then
      mount:loadb(T37.new("4p"), 4)
    end
    if cutp == 4 then
      mount:loadb(T37.new("5p"), 4)
    end
    if cutp == 5 then
      mount:loadb(T37.new("6p"), 4)
    end
    if cutp == 6 then
      mount:loadb(T37.new("7p"), 4)
    end
    if cutp == 7 then
      mount:loadb(T37.new("8p"), 4)
    end
    if cuts == 1 then
      mount:loadb(T37.new("2s"), 4)
    end
    if cuts == 2 then
      mount:loadb(T37.new("3s"), 4)
    end
    if cuts == 3 then
      mount:loadb(T37.new("4s"), 4)
    end
    if cuts == 4 then
      mount:loadb(T37.new("5s"), 4)
    end
    if cuts == 5 then
      mount:loadb(T37.new("6s"), 4)
    end
    if cuts == 6 then
      mount:loadb(T37.new("7s"), 4)
    end
    if cuts == 7 then
      mount:loadb(T37.new("8s"), 4)
    end
  end
    
  if who ~= self or rinshan then
    return
  end
  
  if who == self then
    junme = junme + 1
    for _, t in ipairs(hand:effa()) do
      mount:lighta(t, junme * 5)
    end
    for _, t in ipairs(hand:effa4()) do
      mount:lighta(t, junme * -10)
    end
    if hand:ready() then
      if handr:ready() then
        for _, t in ipairs(handr:effa()) do
          print(t, "有危險")
          mount:lighta(t, -27)
        end
      end
      if handc:ready() then
        for _, t in ipairs(handc:effa()) do
          print(t, "有危險")
          mount:lighta(t, -27)
        end
      end
      if handl:ready() then
        for _, t in ipairs(handl:effa()) do
          print(t, "有危險")
          mount:lighta(t, -27)
        end
      end
    else
      if handr:ready() then
        for _, t in ipairs(handr:effa()) do
          print(t, "有危險")
          if mount:remaina(handr:effa()) >= 2 and hand:ct(T34.new(handr:effa())) < 2 then
            mount:lighta(t, 472)
          else
            mount:lighta(t, -47)
          end
        end
      end
      if handc:ready() then
        for _, t in ipairs(handr:effa()) do
          print(t, "有危險")
          if mount:remaina(handr:effa()) >= 2 and hand:ct(T34.new(handr:effa())) < 2 then
            mount:lighta(t, 472)
          else
            mount:lighta(t, -47)
          end
        end
      end
      if handl:ready() then
        for _, t in ipairs(handr:effa()) do
          print(t, "有危險")
          if mount:remaina(handr:effa()) >= 2 and hand:ct(T34.new(handr:effa())) < 2 then
            mount:lighta(t, 472)
          else
            mount:lighta(t, -47)
          end
        end
      end
    end
  end
end
