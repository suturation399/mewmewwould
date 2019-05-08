function onmonkey()
  junme = 0
  local exist = exists[self:index()]
  
  exist:incmk(T37.new("0p"), 35)
  exist:incmk(T37.new("0s"), 35)
  exist:incmk(T37.new("0m"), 35)
end

function ondraw()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local drids = mount:getdrids()
  local junmk = junme * 3
  local sunmk = junme * 30
  local jdomk = 90 - junme * 5

  if who ~= self or rinshan then
    return
  end
 
  if who == self then
    junme = junme + 1
    if steps >= 1 then
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, junmk)
      end
      mount:lighta(T37.new("0p"), jdomk)
      mount:lighta(T37.new("0s"), jdomk)
      mount:lighta(T37.new("0m"), jdomk)
      for _, t in ipairs(drids) do
        mount:lighta(t:dora(), jdomk)
      end
    end
    
    if steps == 0 then
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, -6)
      end
    end

    if handr:ready() then
      for _, t in ipairs(handr:effa()) do
        mount:lighta(t, sunmk)
       end
    end

    if handc:ready() then
      for _, t in ipairs(handc:effa()) do
        mount:lighta(t, sunmk)
       end
    end

    if handl:ready() then
      for _, t in ipairs(handl:effa()) do
        mount:lighta(t, sunmk)
      end
   end
  end
end
