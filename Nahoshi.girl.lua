function checkinit()
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local suits = { "m", "p", "s" }
  local ssk = 0
  local sak = 0
  local rp = 0
  local ty = 0
  local ok = 1
  
  for i=2,7,1 do
    for _, suit in ipairs(suits) do
      if init:ct(T34.new(i-1 .. suit)) >0 then
