ok = 0

function checkinit()
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  ok = 0
  
  if who ~= self or iter > 87 then
    return true
  end
  
  if init:ct(T34.new("1y")) >= 2 and init:step4() >= 3 and init:step4() <= 4 then
    ok = 1
  end
  
  if init:ct(T34.new("2y")) >= 2 and init:step4() >= 3 and init:step4() <= 4 then
    ok = 1
  end
    
  if init:ct(T34.new("3y")) >= 2 and init:step4() >= 3 and init:step4() <= 4 then
    ok = 1
  end
  
  if rw == 1 or sw == 1 then
    if init:ct(T34.new("1f")) >= 2 and init:step4() >= 3 and init:step4() <= 4 then
      ok = 1
    end
  end
  
  if rw == 2 or sw == 2 then
    if init:ct(T34.new("2f")) >= 2 and init:step4() >= 3 and init:step4() <= 4 then
      ok = 1
    end
  end
  
  if rw == 3 or sw == 3 then
    if init:ct(T34.new("3f")) >= 2 and init:step4() >= 3 and init:step4() <= 4 then
      ok = 1
    end
  end
  
  if sw == 4 then
    if init:ct(T34.new("4f")) >= 2 and init:step4() >= 3 and init:step4() <= 4 then
      ok = 1
    end
  end
  
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  
  if ny <= 3 and init:step() >= 3 and init:step() <= 4 then
    ok = 1
  end
  
  return ok >= 1
end

function ondraw()
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
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
    if handr:ready() then
      for _, t in ipairs(handr:effa()) do
        mount:lighta(t, -32)
      end
    end
    if handc:ready() then
      for _, t in ipairs(handc:effa()) do
        mount:lighta(t, -32)
      end
    end
    if handl:ready() then
      for _, t in ipairs(handl:effa()) do
        mount:lighta(t, -32)
      end
    end
    if steps >= 1 then
      mount:lighta(T37.new("0p"), dormk)
      mount:lighta(T37.new("0s"), dormk)
      mount:lighta(T37.new("0m"), dormk)
      for _, t in ipairs(drids) do
        mount:lighta(t:dora(), dormk)
      end
    else
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, 96 - junmk)
      end
    end
  end
  
  ryou(mount, game, who)
end

function ryou (mount, game, who)
  
  if who ~= self then
    return
  end

  local mk = 12 * junme
  local hand = game:gethand(self)
  local handl = game:gethand(self:left())
  local handc = game:gethand(self:cross())
  local handr = game:gethand(self:right())
  local closed = hand:closed()
  local dream = Hand.new(hand)
  local allpair = {}
  local allrange = 1
  local cutpair = {}
  local cutrange = 1
  local bestpair = T34.new("1p")
  local bestcut = T34.new("1p")
  local bestcount = 0
  local suits = { "m", "p", "s" }
  local threeseven = {"1p","2p","3p","4p","5p","0p","6p","7p","8p","9p","1s","2s","3s","4s","5s","0s","6s","7s","8s","9s","1m","2m","3m","4m","5m","0m","6m","7m","8m","9m","1f","2f","3f","4f","1y","2y","3y"}

  for _, i in ipairs(threeseven) do
    t = T37.new(i)
    if closed:ct(t) >= 1 then
       cutpair[cutrange] = t
       cutrange = cutrange + 1
    end
  end

  for _, t in ipairs(hand:effa4 ()) do
    allpair[allrange] = T37.new(t:id34())
    allrange = allrange + 1
    if t == T34.new("5p") then
      allpair[allrange] = T37.new("0p")
      allrange = allrange + 1
    end
    if t == T34.new("5s") then
      allpair[allrange] = T37.new("0s")
      allrange = allrange + 1
    end
    if t == T34.new("5m") then
      allpair[allrange] = T37.new("0m")
      allrange = allrange + 1
    end
  end

  if not hand:ready() then
    for _, t in ipairs(allpair) do
      for _, cut in ipairs(cutpair) do
        if mount:remaina(t) > 0 and cut ~= t then
          dream = Hand.new(hand)
          dream:draw(t)
          dream:swapout(cut)
          if dream:step() < hand:step() then
            local comingcount = 0
            for _, no in ipairs(dream:effa()) do
              comingcount = comingcount + 1
            end
            if comingcount > bestcount and (handr:step() ~= 0 or (handr:step() == 0 and cut ~= handr:effa())) and (handc:step() ~= 0 or (handc:step() == 0 and cut ~= handc:effa())) and (handl:step() ~= 0 or (handl:step() == 0 and cut ~= handl:effa())) then
              bestpair = t
              bestcut = cut
              bestcount = comingcount
            end
          end
        end
      end
    end
    
    mount:lighta(bestpair, mk)
  
    if hand:step() == 1 and bestcount >= 3 then
      mount:lighta(bestpair, 5 * mk)
    end
  end
end 
