doge = 0
sp = 54

function ondice()
  local extra = game:getextraround()

  if extra == 0 then
    sp = 46
  end
  if extra == 1 then
    sp = 24
  end
  if extra >= 2 then
    sp = 12
  end
  
  doge = rand:gen(sp)
end

function onmonkey()
  status = doge
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local exist = exists[self:index()]
  
  if status <= 1 then
    exist:incmk(T34.new("1y"), 144)
    exist:incmk(T34.new("2y"), -15)
    exist:incmk(T34.new("3y"), -15)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -15)
    end
  end
  
  if status == 2 then
    exist:incmk(T34.new("2y"), 144)
    exist:incmk(T34.new("1y"), -15)
    exist:incmk(T34.new("3y"), -15)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -15)
    end
  end

  if status == 3 then
    exist:incmk(T34.new("3y"), 144)
    exist:incmk(T34.new("1y"), -15)
    exist:incmk(T34.new("2y"), -15)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -15)
    end
  end

  if status == 4 then
    if sw == 1 then
      exist:incmk(T34.new("1f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if sw == 2 then
      exist:incmk(T34.new("2f"), 144)
      exist:incmk(T34.new("1f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if sw == 3 then
      exist:incmk(T34.new("3f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("1f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if sw == 4 then
      exist:incmk(T34.new("4f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("1f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
  end
  
  if status == 5 then
    if rw == 1 then
      exist:incmk(T34.new("1f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if rw == 2 then
      exist:incmk(T34.new("2f"), 144)
      exist:incmk(T34.new("1f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if rw >= 3 then
      exist:incmk(T34.new("3f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("1f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
  end
  
  if status >= 6 then
    for i = 2, 8 do
      exist:incmk(T34.new(i .. "p"), 45)
      exist:incmk(T34.new(i .. "s"), 45)
      exist:incmk(T34.new(i .. "m"), 45)
    end
  end
end

function checkinit()
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  
  if iter > 66 then
    return true
  end

  if who ~= self then
    return true
  end
  
  if status <= 1 then
    return init:step() <= 5 and init:ct(T34.new("1y")) == 2
  end

  if status == 2 then
    return init:step() <= 5 and init:ct(T34.new("2y")) == 2
  end

  if status == 3 then
    return init:step() <= 5 and init:ct(T34.new("3y")) == 2
  end

  if status == 4 then
    if sw == 1 then
      return init:step() <= 5 and init:ct(T34.new("1f")) == 2
    end
    if sw == 2 then
      return init:step() <= 5 and init:ct(T34.new("2f")) == 2
    end
    if sw == 3 then
      return init:step() <= 5 and init:ct(T34.new("3f")) == 2
    end
    if sw == 4 then
      return init:step() <= 5 and init:ct(T34.new("4f")) == 2
    end
  end

  if status == 5 then
    if rw == 1 then
      return init:step() <= 5 and init:ct(T34.new("1f")) == 2
    end
    if rw == 2 then
      return init:step() <= 5 and init:ct(T34.new("2f")) == 2
    end
    if rw == 3 then
      return init:step() <= 5 and init:ct(T34.new("3f")) == 2
    end
  end

  if status >= 6 then
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
    return ny <= 4 and init:step4() <= 5
  end
end

function ondraw()
  local drids = mount:getdrids()
  local handw = game:gethand(who)
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local steps = hands:step(self)
  local stepw = handw:step(who)
  local junmk = junme * 4

  for _, t in ipairs(drids) do
    nd = hands:ctaka5() + hands:ct(t:dora())
  end

  local dormk = ((nd - 2) * -45) - (4 * junme) - 24
  
  if rinshan then
    return
  end

  if who ~= self then
    local river = game:getriver(who)
    if stepw >= 1 then
      for _, t in ipairs(river) do
        mount:lighta(t, 8)
      end
    else
      for _, t in ipairs(river) do
        mount:lighta(t, -8)
      end
      for _, t in ipairs(game:gethand(who):effa()) do
        mount:lighta(t, -14)
      end
      for i = 3, 7 do
        mount:lighta(T34.new(i .. "m"), 8)
        mount:lighta(T34.new(i .. "p"), 8)
        mount:lighta(T34.new(i .. "s"), 8)
      end
    end
  end
  
  if who == self then
    junme = junme + 1
    if steps >= 1 then
    else
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, 96 - junmk)
      end
      for i = 2, 8 do
        mount:lighta(T34.new(i .. "m"), -8)
        mount:lighta(T34.new(i .. "p"), -8)
        mount:lighta(T34.new(i .. "s"), -8)
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
  local worstpair = T34.new("1p")
  local bestcut = T34.new("1p")
  local worstcut = T34.new("1p")
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
  
  for _, t in ipairs(handr:effa()) do
    for _, ea in ipairs(hand:effa()) do
      if t == ea then
        mount:lighta(t, 28 * mk)
      else
        mount:lighta(t, -28)
      end
    end
  end
  if handc:ready() then
    for _, t in ipairs(handc:effa()) do
      for _, ea in ipairs(hand:effa()) do
        if t == ea then
          mount:lighta(t, 28 * mk)
        else
          mount:lighta(t, -28)
        end
      end
    end
  end
  if handl:ready() then
    for _, t in ipairs(handl:effa()) do
      for _, ea in ipairs(hand:effa()) do
        if t == ea then
          mount:lighta(t, 28 * mk)
        else
          mount:lighta(t, -28)
        end
      end
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
            if handl:step() ~= 0 and handc:step() ~= 0 then
              if comingcount > bestcount then
                bestpair = t
                bestcut = cut
                bestcount = comingcount
              end
            else
              if handr:step() >= 0 then
                if cut ~= handr:effa() then
                  bestpair = t
                  bestcut = cut
                end
              end
              if handc:step() == 0 then
                if cut ~= handc:effa() then
                  bestpair = t
                  bestcut = cut
                end
              end
              if handl:step() == 0 then
                if cut ~= handl:effa() then
                  bestpair = t
                  bestcut = cut
                end
              end
            end
          end
          if dream:step() <= hand:step() then
            local comingcount = 0
            for _, no in ipairs(dream:effa()) do
              comingcount = comingcount + 1
            end
            if comingcount > bestcount then
              if cut == handr:effa() then
                worstpair = t
                worstcut = cut
              end
              if handc:step() == 0 then
                if cut == handc:effa() then
                  worstpair = t
                  worstcut = cut
                end
              end
              if handl:step() == 0 then
                if cut == handl:effa() then
                  worstpair = t
                  worstcut = cut
                end
              end
            end
          end
        end
      end
    end
  
    if handr:step() ~= 0 and handl:step() ~= 0 and handc:step() ~= 0 then
      for i = 2,8 do
        for _, suit in ipairs(suits) do
          if hand:step() >= 1 and closed:ct(T34.new(i .. suit)) == 2 and (closed:ct(T34.new(i+1 .. suit)) > 0 and closed:ct(T34.new(i-1 .. suit)) > 0) then
            mount:lighta(T34.new(i .. suit), mk * 0.4)
          end
        end
      end
    end

    mount:lighta(bestpair, mk)
    mount:lighta(worstpair, -1.2 * mk)
  
    if hand:step() == 1 and bestcount >= 3 then
      mount:lighta(bestpair, 4 * mk)
    end
  end
end 
