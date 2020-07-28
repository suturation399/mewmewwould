doge = 0

function ondice()
  doge = rand:gen(4)
end

function onmonkey()
  status = doge
  local exist = exists[self:index()]
  
  if status >= 3 then
    print("感覺這局餅子會一直來呢")
    for i = 1, 9 do
      exist:incmk(T34.new(i .. "p"), 66)
      exist:incmk(T34.new(i .. "m"), -13)
      exist:incmk(T34.new(i .. "s"), -13)
    end
  else
    for i = 1, 9 do
      exist:incmk(T34.new(i .. "p"), 3)
    end
  end
end

function checkinit()
  if who ~= self or iter > 33 then
    return true
  end

  local inp = init:closed():ct("p")
  local inm = init:closed():ct("m")
  local ins = init:closed():ct("s")
  
  if status >= 3 then
    return inp >= 8 and inm <= 2 and inp <= 2
  else
    return inp >= inm and inp >= ins
  end
end

function ondraw()
  status = doge
  local hand = game:gethand(self)
  local effas = hand:effa(self)

  if who ~= self or rinshan then
    return
  end

  local np = hand:ct(T34.new("1p")) + hand:ct(T34.new("2p")) + hand:ct(T34.new("3p")) + hand:ct(T34.new("4p")) + hand:ct(T34.new("5p")) + hand:ct(T34.new("6p")) + hand:ct(T34.new("7p")) + hand:ct(T34.new("8p")) + hand:ct(T34.new("9p"))
  local pnp = np * 5 * status
  local efanp = np * 5
  
  if hand:step() ~= 0 then
    for i = 1, 9 do
      mount:lighta(T34.new(i .. "p"), pnp)
    end
    for _, t in ipairs(effas) do
      mount:lighta(t, efanp)
    end
  else
    for _, t in ipairs(effas) do
      mount:lighta(t, efanp)
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
  local ctxr = game:getformctx(self:right())
  local ctxc = game:getformctx(self:cross())
  local ctxl = game:getformctx(self:left())
  
  if event.args.who == self then
    if ctxr.riichi >= 1 then
      for _, t in ipairs(handr:effa()) do
        if hands:ct(t) >= 1 then
          print(t, "不能切出去呢")
        end
      end
    end
    if ctxc.riichi >= 1 then
      for _, t in ipairs(handc:effa()) do
        if hands:ct(t) >= 1 then
          print(t, "不能切出去呢")
        end
      end
    end
    if ctxl.riichi >= 1 then
      for _, t in ipairs(handl:effa()) do
        if hands:ct(t) >= 1 then
          print(t, "不能切出去呢")
        end
      end
    end
  end
end
