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
    local nonec = riverc:ct(T34.new("1p")) + riverc:ct(T34.new("1s")) + riverc:ct(T34.new("1m"))
    local ntwoc = riverc:ct(T34.new("2p")) + riverc:ct(T34.new("2s")) + riverc:ct(T34.new("2m"))
    local nthreec = riverc:ct(T34.new("3p")) + riverc:ct(T34.new("3s")) + riverc:ct(T34.new("3m"))
    local nfourc = riverc:ct(T34.new("4p")) + riverc:ct(T34.new("4s")) + riverc:ct(T34.new("4m"))
    local nfivec = riverc:ct(T34.new("5p")) + riverc:ct(T34.new("5s")) + riverc:ct(T34.new("5m"))
    local nsixc = riverc:ct(T34.new("6p")) + riverc:ct(T34.new("6s")) + riverc:ct(T34.new("6m"))
    local nsevenc = riverc:ct(T34.new("7p")) + riverc:ct(T34.new("7s")) + riverc:ct(T34.new("7m"))
    local neightc = riverc:ct(T34.new("8p")) + riverc:ct(T34.new("8s")) + riverc:ct(T34.new("8m"))
    local nninec = riverc:ct(T34.new("9p")) + riverc:ct(T34.new("9s")) + riverc:ct(T34.new("9m"))
  local riverl = game:getriver(self:left())
    local nonel = riverl:ct(T34.new("1p")) + riverl:ct(T34.new("1s")) + riverl:ct(T34.new("1m"))
    local ntwol = riverl:ct(T34.new("2p")) + riverl:ct(T34.new("2s")) + riverl:ct(T34.new("2m"))
    local nthreel = riverl:ct(T34.new("3p")) + riverl:ct(T34.new("3s")) + riverl:ct(T34.new("3m"))
    local nfourl = riverl:ct(T34.new("4p")) + riverl:ct(T34.new("4s")) + riverl:ct(T34.new("4m"))
    local nfivel = riverl:ct(T34.new("5p")) + riverl:ct(T34.new("5s")) + riverl:ct(T34.new("5m"))
    local nsixl = riverl:ct(T34.new("6p")) + riverl:ct(T34.new("6s")) + riverl:ct(T34.new("6m"))
    local nsevenl = riverl:ct(T34.new("7p")) + riverl:ct(T34.new("7s")) + riverl:ct(T34.new("7m"))
    local neightl = riverl:ct(T34.new("8p")) + riverl:ct(T34.new("8s")) + riverl:ct(T34.new("8m"))
    local nninel = riverl:ct(T34.new("9p")) + riverl:ct(T34.new("9s")) + riverl:ct(T34.new("9m"))
  local rivers = game:getriver(self)
    local nones = rivers:ct(T34.new("1p")) + rivers:ct(T34.new("1s")) + rivers:ct(T34.new("1m"))
    local ntwos = rivers:ct(T34.new("2p")) + rivers:ct(T34.new("2s")) + rivers:ct(T34.new("2m"))
    local nthrees = rivers:ct(T34.new("3p")) + rivers:ct(T34.new("3s")) + rivers:ct(T34.new("3m"))
    local nfours = rivers:ct(T34.new("4p")) + rivers:ct(T34.new("4s")) + rivers:ct(T34.new("4m"))
    local nfives = rivers:ct(T34.new("5p")) + rivers:ct(T34.new("5s")) + rivers:ct(T34.new("5m"))
    local nsixs = rivers:ct(T34.new("6p")) + rivers:ct(T34.new("6s")) + rivers:ct(T34.new("6m"))
    local nsevens = rivers:ct(T34.new("7p")) + rivers:ct(T34.new("7s")) + rivers:ct(T34.new("7m"))
    local neights = rivers:ct(T34.new("8p")) + rivers:ct(T34.new("8s")) + rivers:ct(T34.new("8m"))
    local nnines = rivers:ct(T34.new("9p")) + rivers:ct(T34.new("9s")) + rivers:ct(T34.new("9m"))
  local hands = game:gethand(self)
  
  if who == self then
    junme = junme + 1
    power = 3 * (nones + 2 * ntwos + 3 * nthrees + 4 * nfours + 5 * nfives + 6 * nsixs + 7 * nsevens + 8 * neights + 9 * nnines)
    if junme <= 1 then 
      decree = hands:step()
    end
    for _, t in ipairs(hands:effa()) do
      mount:lighta(t, power)
    end
  end

    
    
    
