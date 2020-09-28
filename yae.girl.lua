  
ok = 0

function checkinit()
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  ok = 0
  
  if who ~= self or iter > 87 then
    return true
  end

  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  
  if ny <= 3 and init:step() <= 4 then
    ok = 1
  end
  
  return ok >= 1
end

function ondraw()
  local hands = game:gethand(self)
  local effas = hands:effa()
  local steps = hands:step(self)
  local hand = game:gethand(who)
  local ctx = game:getformctx(self)
  local rule = game:getrule()
  local drids = mount:getdrids()
  local junmk = 67 - junme * 3
  local omk = junme * 4 * hand:step()
  local amk = junme * 4 * (6 - hand:step())
  
  
  if rinshan or ctx.ippatsu then
    return 
  end
  
  if who == self then
    if hands:step() == ctx.riichi and not hands:ismenzen() then
      for _, t in ipairs(hands:effa4()) do
        mount:lighta(t, -9 * junme)
      end
    else
      for _, t in ipairs(hands:effa4()) do
        mount:lighta(t, junmk)
      end
    end
  end
  
  if who ~= self then
    if ctx.riichi ~= 0 then
      for _, t in ipairs(effas) do
        local ntenpai = mount:remaina(t)
        if ntenpai > 1 then
          mount:lighta(t, amk)
        end
      end
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, omk)
      end
    end
  end
  
  ryou(mount, game, who)
end

function ryou (mount, game, who)
  
  if who ~= self then
    return
  end

  local mk = 134 - junme * 6
  local hand = game:gethand(self)
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
            if comingcount > bestcount then
              bestpair = t
              bestcut = cut
              bestcount = comingcount
            end
          end
        end
      end
    end
  
    for i = 2,8 do
      for _, suit in ipairs(suits) do
        if hand:step() >= 1 and closed:ct(T34.new(i .. suit)) == 2 and (closed:ct(T34.new(i+1 .. suit)) > 0 and closed:ct(T34.new(i-1 .. suit)) > 0) then
          mount:lighta(T34.new(i .. suit), mk)
        end
      end
    end

    mount:lighta(bestpair, mk)
  
    if hand:step() == 1 and bestcount >= 3 then
      mount:lighta(bestpair, 5*mk)
    end
  end
end 
