function onmonkey()
  junme = 0
end

function checkinit()
  if who ~= self or iter > 3 then
    return true
  end
  
  return init:step() <= 4
end

function ondraw()
  local hands = game:gethand(self)
  local effas = hands:effa()
  local steps = hands:step(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local ctx = game:getformctx(self)
  local rule = game:getrule()
  local drids = mount:getdrids()
  
  if who ~= self or rinshan then
    return
  end
  
  if who == self then
    junme = junme + 1
    for _, t in ipairs(effas) do
      local neffas = mount:remaina(t)
      local ne = neffas * -1 + 8
      mount:lighta(t, ne * 30)
    end
  end
end
