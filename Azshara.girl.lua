decree = 0
failurer = 0
failurec = 0
failurel = 0
pressure = 0
catastrophe = 0
junme = 0

function onmonkey()
  power = 0
  junme = 0
  
  if failurer == 1 then
    ancientr = -100
  else
    ancientr = 30
  end
  
  if failurec == 1 then
    ancientc = -100
  else
    ancientc = 30
  end
  
    if failurel == 1 then
    ancientl = -100
  else
    ancientl = 30
  end
  
  if catastrophe == 1 then
    for i = 1, 9 do
      exists[self:index()]:incmk(T34.new(i .. "p"), 200)
    end
  end
end
     
function checkinit()
  if who ~= self then
    if pressure ~= 0 then
      return init:step() >= pressure + 3
    else
      return true
    end
  end

  if catastrophe == 1 then
    return init:closed():ct("p") == 13
  else
    return true
  end
end

function ondraw()
  local riverr = game:getriver(self:right())
    local noner = riverr:ct(T34.new("1p")) + riverr:ct(T34.new("1s")) + riverr:ct(T34.new("1m"))
    local ntwor = riverr:ct(T34.new("2p")) + riverr:ct(T34.new("2s")) + riverr:ct(T34.new("2m"))
    local nthreer = riverr:ct(T34.new("3p")) + riverr:ct(T34.new("3s")) + riverr:ct(T34.new("3m"))
    local nfourr = riverr:ct(T34.new("4p")) + riverr:ct(T34.new("4s")) + riverr:ct(T34.new("4m"))
    local nfiver = riverr:ct(T34.new("5p")) + riverr:ct(T34.new("5s")) + riverr:ct(T34.new("5m"))
    local nsixr = riverr:ct(T34.new("6p")) + riverr:ct(T34.new("6s")) + riverr:ct(T34.new("6m"))
    local nsevenr = riverr:ct(T34.new("7p")) + riverr:ct(T34.new("7s")) + riverr:ct(T34.new("7m"))
    local neightr = riverr:ct(T34.new("8p")) + riverr:ct(T34.new("8s")) + riverr:ct(T34.new("8m"))
    local nniner = riverr:ct(T34.new("9p")) + riverr:ct(T34.new("9s")) + riverr:ct(T34.new("9m"))
  local riverc = game:getriver(self:cross())
  local riverl = game:getriver(self:left())
  local hands = game:gethand(self)
  
  if who == self then
    junme = junme + 1
    if junme <= 1 then 
      decree == 0

    
    
    
