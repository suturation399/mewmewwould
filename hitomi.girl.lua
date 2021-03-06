function onmonkey()
  junme = 0
  local exist = exists[self:index()]
  
  exist:incmk(T37.new("0p"), 50)
  exist:incmk(T37.new("0s"), 50)
  exist:incmk(T37.new("0m"), 50)
end

function ondraw()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local drids = mount:getdrids()
  local junmk = junme * 3
  local jdomk = 150 - junme * 7

  if who ~= self or rinshan then
    return
  end

  if who == self and steps >= 1 then
    junme = junme + 1
    mount:lighta(T37.new("0p"), jdomk)
    mount:lighta(T37.new("0s"), jdomk)
    mount:lighta(T37.new("0m"), jdomk)
    for _, t in ipairs(drids) do
      mount:lighta(t:dora(), jdomk)
    end
    if (junme == 1 and steps >= 5) or junme == 12 then
      print("不管怎樣都是政治的錯")
    end
  end
      
  if who == self and steps == 0 then
    junme = junme + 1
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, -15)
     end
    if junme == 17 then
      print("不管怎樣都是政府的錯")
    end
  end
  
  ryou(mount, game, who)
end

function ryou (mount, game, who)
  
  if who ~= self then
    return
  end

  local mk = 9 * junme
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
          mount:lighta(T34.new(i .. suit), mk * 0.5)
        end
      end
    end

    mount:lighta(bestpair, mk)
  
    if hand:step() == 1 and bestcount >= 3 then
      mount:lighta(bestpair, 5 * mk)
    end
  end
end 
