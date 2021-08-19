function onmonkey()
  junme = 0
end

function ondraw()
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local steps = hands:step(self)
  local junmk = junme * 6
  local ctx = game:getformctx(self)

  for _, t in ipairs(drids) do
    nd = hands:ctaka5() + hands:ct(t:dora())
  end

  local dormk = ((nd - 2) * -45) - (4 * junme) - 24
  
  if rinshan or ctx.ippatsu then
    return
  end

  if who ~= self then
    if who == self:right() then
      for _, t in ipairs(handl:effa()) do
        mount:lighta(t, 62)
      end
    end
    if who == self:cross() then
      for _, t in ipairs(handr:effa()) do
        mount:lighta(t, 62)
      end
    end
    if who == self:left() then
      for _, t in ipairs(handc:effa()) do
        mount:lighta(t, 62)
      end
    end
  end
    
  if who == self then
    junme = junme + 1
    if handr:ready() then
      for _, t in ipairs(handr:effa()) do
        for _, ea in ipairs(hands:effa()) do
          if t == ea then
            mount:lighta(t, 31 * 6)
          else
            mount:lighta(t, -31)
          end
        end
      end
    end
    if handc:ready() then
      for _, t in ipairs(handc:effa()) do
        for _, ea in ipairs(hands:effa()) do
          if t == ea then
            mount:lighta(t, 31 * 6)
          else
            mount:lighta(t, -31)
          end
        end
      end
    end
    if handl:ready() then
      for _, t in ipairs(handl:effa()) do
        for _, ea in ipairs(hands:effa()) do
          if t == ea then
            mount:lighta(t, 31 * 6)
          else
            mount:lighta(t, -31)
          end
        end
      end
    end
    if steps >= 1 then
      mount:lighta(T37.new("0p"), dormk)
      mount:lighta(T37.new("0s"), dormk)
      mount:lighta(T37.new("0m"), dormk)
      for _, t in ipairs(drids) do
        mount:lighta(t:dora(), dormk)
      end
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junmk)
      end
    else
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, 122 - junmk)
      end
    end
  end
end

function ongameevent()
  if event.type == "drawn" then
    read(mount, game, who)
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
    if hands:step() <= 1 then
      for _, t in ipairs(hands:effa()) do
        print(t, "應該山存", mount:remaina(t))
      end
    end
    if handr:ready() then
      for _, t in ipairs(handr:effa()) do
        print(t, "會銃下家，應該山存", mount:remaina(t))
      end
    end
    if handc:ready() then
      for _, t in ipairs(handc:effa()) do
        print(t, "會銃對家，應該山存", mount:remaina(t))
      end
    end
    if handl:ready() then
      for _, t in ipairs(handl:effa()) do
        print(t, "會銃上家，應該山存", mount:remaina(t))
      end
    end
  end
end
