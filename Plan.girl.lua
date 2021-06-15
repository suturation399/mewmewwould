doge = 0
sp = 45
ro = 1

function ondice()
  if ro >= 5 then
    sp = 45 - ro
  else
    sp = 3
  end
 
  doge = rand:gen(sp)
end

function onmonkey()
  junme = 0
  ro = ro + 1
  local exist = exists[self:index()]
  
  if doge <= 10 then
    print("感覺這局可以努力拼一下")
    exist:incmk(T37.new("0p"), 34)
    exist:incmk(T37.new("0s"), 34)
    exist:incmk(T37.new("0m"), 34)
  end
  if doge >= 30 then
    print("感覺這局完全不行呢")
    exist:incmk(T37.new("0p"), -34)
    exist:incmk(T37.new("0s"), -34)
    exist:incmk(T37.new("0m"), -34)
  end
end

function checkinit()
  
  if iter > 176 or (doge > 10 and doge < 30) then
    return true
  end
  
  if doge <= 10 then
    if who == self then
      return init:step() <= 4
    else
      return init:step() >= 3
    end
  end
  if doge >= 30 then
    if who == self then
      return init:step() >= 5
    else
      return init:step() <= 5
    end
  end
end
  
function ondraw()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local drids = mount:getdrids()
  local junmk = junme * 3
  local jdomk = 150 - junme * 7

  if rinshan then
    return
  end

  if who == self then
    junme = junme + 1
    if doge <= 10 then
      if steps >= 1 then
        mount:lighta(T37.new("0p"), jdomk)
        mount:lighta(T37.new("0s"), jdomk)
        mount:lighta(T37.new("0m"), jdomk)
        for _, t in ipairs(drids) do
          mount:lighta(t:dora(), jdomk)
        end
      else
        for _, t in ipairs(hands:effa()) do
          mount:lighta(t, junme * 4)
        end
      end
    end
    if doge >= 30 then
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, -28)
      end
    end
  end
  
  len(mount, game, who)
  ryou(mount, game, who)
end
  
function len (mount, game, who)
  
  if who == self then
    return
  end
  
  local hand = game:gethand(who)
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local effas = hand:effa()
  
  if doge <= 10 then
    if hand:step() <= hands:step() or hand:step() <= 1 then
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, -97)
        mount:lightb(t, -97)
      end
    else
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, 2)
      end
    end
  else
    if hand:step() ~= 0 then
      if hand:step() > handr:step() or hand:step() > handc:step() or hand:step() > handl:step() then
        for _, t in ipairs(hand:effa()) do
          mount:lighta(t, 2)
        end
      end
    else
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, -97)
        mount:lightb(t, -97)
      end
    end
  end
end

function ryou (mount, game, who)
  
  if who ~= self or doge <= 20 then
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
  
  if handr:ready() then
    for _, t in ipairs(handr:effa()) do
      for _, ea in ipairs(hand:effa()) do
        if t == ea then
          mount:lighta(t, 34 * mk)
        else
          mount:lighta(t, -34)
        end
      end
    end
  end
  if handc:ready() then
    for _, t in ipairs(handc:effa()) do
      for _, ea in ipairs(hand:effa()) do
        if t == ea then
          mount:lighta(t, 34 * mk)
        else
          mount:lighta(t, -34)
        end
      end
    end
  end
  if handl:ready() then
    for _, t in ipairs(handl:effa()) do
      for _, ea in ipairs(hand:effa()) do
        if t == ea then
          mount:lighta(t, 34 * mk)
        else
          mount:lighta(t, -34)
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
            if handr:step() ~= 0 and handl:step() ~= 0 and handc:step() ~= 0 then
              if comingcount > bestcount then
                bestpair = t
                bestcut = cut
                bestcount = comingcount
              end
            else
              if handr:step() == 0 then
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
              if handr:step() == 0 then
                if cut == handr:effa() then
                  worstpair = t
                  worstcut = cut
                end
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
            mount:lighta(T34.new(i .. suit), mk * 0.5)
          end
        end
      end
    end

    mount:lighta(bestpair, mk)
    mount:lighta(worstpair, -34)
  
    if hand:step() == 1 and bestcount >= 3 then
      mount:lighta(bestpair, 5 * mk)
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
  local ctxs = game:getformctx(self)
  
  if event.args.who == self then
    if junme == 7 then
      print("大約感覺到他家的動靜呢")
    end
    if junme >= 7 then
      if handr:ready() then
        for _, t in ipairs(handr:effa()) do
          print(t, "會銃下家")
        end
      else
        print("下家", handr:step(), "向聽")
      end
      if handc:ready() then
        for _, t in ipairs(handc:effa()) do
          print(t, "會銃對家")
        end
      else
        print("對家", handc:step(), "向聽")
      end
      if handl:ready() then
        for _, t in ipairs(handl:effa()) do
          print(t, "會銃上家")
        end
      else
        print("上家", handl:step(), "向聽")
      end
    end
  end
end
