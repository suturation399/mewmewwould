decree = 0
failurer = 0
failurec = 0
failurel = 0
pressure = 0
catastrophe = 0
doge = 0

function ondice()
  doge = rand:gen(6)
end

function onmonkey()
  power = 0
  decree = doge
  
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
  
  if ancientr + ancientc + ancientl == -300 then
    pressure = 3
    catastrophe = 1
  end
  if ancientr + ancientc + ancientl == -200 + 30 then
    pressure = 2
  end
  if ancientr + ancientc + ancientl == -100 + 60 then
    pressure = 1
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
    if 
  end

  if catastrophe == 1 then
    return init:closed():ct("p") == 13
  else
    return true
  end
  
end

function ondraw()
  local drids = mount:getdrids()
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
  local hand = game:gethand(who)
  
  if who == self then
    power = nones + 2 * ntwos + 3 * nthrees + 4 * nfours + 5 * nfives + 6 * nsixs + 7 * nsevens + 8 * neights + 9 * nnines
    ancientr = 30 + noner + 2 * ntwor + 3 * nthreer + 4 * nfourr + 5 * nfiver + 6 * nsixr + 7 * nsevenr + 8 * neightr + 9 * nniner - power
    ancientc = 30 + nonec + 2 * ntwoc + 3 * nthreec + 4 * nfourc + 5 * nfivec + 6 * nsixc + 7 * nsevenc + 8 * neightc + 9 * nninec - power
    ancientl = 30 + nonel + 2 * ntwol + 3 * nthreel + 4 * nfourl + 5 * nfivel + 6 * nsixl + 7 * nsevenl + 8 * neightl + 9 * nninel - power
    power = 3 * (nones + 2 * ntwos + 3 * nthrees + 4 * nfours + 5 * nfives + 6 * nsixs + 7 * nsevens + 8 * neights + 9 * nnines
    print("力量結界能量", power * 3)
    print("下家上古結界能量", ancientr)
    print("對家上古結界能量", ancientc)
    print("上家上古結界能量", ancientl)
    for _, t in ipairs(hand:effa()) do
      mount:lighta(t, power * 3)
    end
  end
      
  if who ~= self then
    if decree == 1 then
      mount:lighta(T37.new("0p"), -30)
      mount:lighta(T37.new("0s"), -30)
      mount:lighta(T37.new("0m"), -30)
      for _, t in ipairs(drids) do
        mount:lighta(t:dora(), -30)
      end
    end
    if decree == 2 then
      local np = hand:ct(T34.new("1p")) + hand:ct(T34.new("2p")) + hand:ct(T34.new("3p")) + hand:ct(T34.new("4p")) + hand:ct(T34.new("5p")) + hand:ct(T34.new("6p")) + hand:ct(T34.new("7p")) + hand:ct(T34.new("8p")) + hand:ct(T34.new("9p"))
      local ns = hand:ct(T34.new("1s")) + hand:ct(T34.new("2s")) + hand:ct(T34.new("3s")) + hand:ct(T34.new("4s")) + hand:ct(T34.new("5s")) + hand:ct(T34.new("6s")) + hand:ct(T34.new("7s")) + hand:ct(T34.new("8s")) + hand:ct(T34.new("9s"))
      local nm = hand:ct(T34.new("1m")) + hand:ct(T34.new("2m")) + hand:ct(T34.new("3m")) + hand:ct(T34.new("4m")) + hand:ct(T34.new("5m")) + hand:ct(T34.new("6m")) + hand:ct(T34.new("7m")) + hand:ct(T34.new("8m")) + hand:ct(T34.new("9m"))
      
      
    
