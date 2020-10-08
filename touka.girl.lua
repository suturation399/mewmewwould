doge = 0
bakuhatsu = 0

function ondice()
  doge = rand:gen(50)
  
  if bakuhatsu ~= 0 then
    bakuhatsu = bakuhatsu + 1
  end
  
  if doge >= 44 then
    bakuhatsu = bakuhatsu + 1
  end
end

function onmonkey()
  junme = 0
  
  if bakuhatsu == 1 then
    print("......")
  end
end

function checkinit()
  local ok = 0
  
  if bakuhatsu == 0 or iter > 500 then
    return true
  end
  
  for _, t in ipairs(T34.all) do
    if init:ct(t) == 4 then
      ok = 1
    end
  end
  
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  local onone = init:ct(T34.new("1f")) <= 1 and init:ct(T34.new("2f")) <= 1 and init:ct(T34.new("3f")) <= 1 and init:ct(T34.new("4f")) <= 1 and init:ct(T34.new("1y")) <= 1 and init:ct(T34.new("2y")) <= 1 and init:ct(T34.new("3y")) <= 1
  
  return onone and ny >= 3 and ok == 0
end

function ondraw()
  local drids = mount:getdrids()
  local hand = game:gethand(who)
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local ctx = game:getformctx(self)
  local rule = game:getrule()
  
  if rinshan then
    return
  end
  
  if bakuhatsu ~= 0 then
    if hand:ct(T34.new("1f")) ~= 0 then
      mount:lighta(T34.new("1f"), -500)
    end
    if hand:ct(T34.new("2f")) ~= 0 then
      mount:lighta(T34.new("2f"), -500)
    end
    if hand:ct(T34.new("3f")) ~= 0 then
      mount:lighta(T34.new("3f"), -500)
    end
    if hand:ct(T34.new("4f")) ~= 0 then
      mount:lighta(T34.new("4f"), -500)
    end
    if hand:ct(T34.new("1y")) ~= 0 then
      mount:lighta(T34.new("1y"), -500)
    end
    if hand:ct(T34.new("2y")) ~= 0 then
      mount:lighta(T34.new("2y"), -500)
    end
    if hand:ct(T34.new("3y")) ~= 0 then
      mount:lighta(T34.new("3y"), -500)
    end
    for _, t in ipairs(T34.all) do
      if hand:ct(t) == 3 then
        mount:lighta(t, -500)
        mount:lightb(t, -1000)
      end
    end
    if who == self then
      junme = junme + 1
    else
      if hand:step() == 0 then
        for _, t in ipairs(hand:effa()) do
          mount:lighta(t, -500)
          mount:lightb(t, -1000)
        end
      end
    end
  else
    if who == self then
      junme = junme + 1
      if hands:step() ~= 0 then
        for _, t in ipairs(hands:effa()) do
          mount:lighta(t, junme * 4)
        end
      else
        for _, t in ipairs(hands:effa()) do
          local form = Form.new(hand, T37.new(t:id34()), ctx, rule, drids)
          if ctx.riichi ~= 0 and form:han() >= 6 then
            mount:lighta(t, 1000)
          else
            mount:lighta(t, 96 - junme * 4)
          end
        end
      end
    end
  end
  
  ryou(mount, game, who)
end

function ryou (mount, game, who)
  
  if who ~= self or bakuhatsu == 0 then
    return
  end

  local mk = 15 * junme
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
      if t ~= hand:effa() then
        mount:lighta(t, -500)
        mount:lightb(t, -1000)
      else
        mount:lighta(t, 35 * mk)
      end
    end
  end
  if handc:ready() then
    for _, t in ipairs(handc:effa()) do
      if t ~= hand:effa() then
        mount:lighta(t, -500)
        mount:lightb(t, -1000)
      else
        mount:lighta(t, 35 * mk)
      end
    end
  end
  if handl:ready() then
    for _, t in ipairs(handl:effa()) do
      if t ~= hand:effa() then
        mount:lighta(t, -500)
        mount:lightb(t, -1000)
      else
        mount:lighta(t, 35 * mk)
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
    mount:lighta(worstpair, -500)
    mount:lightb(worstpair, -1000)
  
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
    if handr:ready() then
      if bakuhatsu == 0 then
        print("下家聽牌了")
      else
        for _, t in ipairs(handr:effa()) do
          print(t, "會銃下家")
        end
      end
    end
    if handc:ready() then
      if bakuhatsu == 0 then
        print("對家聽牌了")
      else
        for _, t in ipairs(handc:effa()) do
          print(t, "會銃對家")
        end
      end
    end
    if handl:ready() then
      if bakuhatsu == 0 then
        print("上家聽牌了")
      else
        for _, t in ipairs(handl:effa()) do
          print(t, "會銃上家")
        end
      end
    end
  end
end
