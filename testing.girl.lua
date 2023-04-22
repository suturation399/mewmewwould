function onmonkey()
  junme = 0
  local existself = exists[self:index()]
  
  existself:incmk(T34.new("2p"), -5)
  existself:incmk(T34.new("4p"), -5)
  existself:incmk(T34.new("8p"), -5)
  existself:incmk(T34.new("2s"), -5)
  existself:incmk(T34.new("3s"), -5)
  existself:incmk(T34.new("4s"), -5)
  existself:incmk(T34.new("6s"), -5)
  existself:incmk(T34.new("8s"), -5)
  existself:incmk(T34.new("1f"), -5)
  existself:incmk(T34.new("2f"), -5)
  existself:incmk(T34.new("3f"), -5)
  existself:incmk(T34.new("4f"), -5)
  existself:incmk(T34.new("1y"), -5)
  existself:incmk(T34.new("2y"), -5)
  existself:incmk(T37.new("0p"), 90)
  existself:incmk(T37.new("0s"), 90)
  existself:incmk(T37.new("0m"), 90)
end

function ondraw()
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local ctx = game:getformctx(self)
  
  if who ~= self or rinshan then
    return
  end
  
  mount:lighta(T37.new("0p"), 90)
  mount:lighta(T37.new("0s"), 90)
  mount:lighta(T37.new("0m"), 90)
  mount:lighta(T34.new("0p"), )
  mount:lighta(T34.new("0s"), )
  mount:lighta(T34.new("0m"), 90)
  junme = junme + 1
    
