doge = 0
ok = 0
bakuhatsu = 0

function ondice()
  doge = rand:gen(50)
  
  if bakuhatsu ~= 0 then
    bakuhatsu = bakuhatsu + 1
  end
  
  if doge >= 45 then
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
  if bakuhatsu ~= 0 or iter > 250 then
    return true
  end
  
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  local onone = init:ct(T34.new("1f")) <= 1 and init:ct(T34.new("2f")) <= 1 and init:ct(T34.new("3f")) <= 1 and init:ct(T34.new("4f")) <= 1 and init:ct(T34.new("1y")) <= 1 and init:ct(T34.new("2y")) <= 1 and init:ct(T34.new("3y")) <= 1
  
  return onone and ny >= 3
end

function ondraw()
  local drids = mount:getdrids()
  local hand = game:gethand()
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local steps = hands:step(self)
  local ctx = game:getformctx(self)
  local rule = game:getrule()
  
  if rinshan then
    return
  end
  
  if hakuhatsu ~= 0 then
    if who == self then
      junme = junme + 1
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junme * 5)
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
