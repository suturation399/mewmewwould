function checkinit()
  if who ~= self or iter > 30 then
    return true
  end

local inp = init:closed():ct("p")
local inm = init:closed():ct("m")
local ins = init:closed():ct("s")

  return inp >= inm and inp >= ins
end

function ondraw()
  local hand = game:gethand(self)
  local effas = hand:effa(self)

  if who ~= self or rinshan then
    return
  end

  local np = hand:ct(T34.new("1p")) + hand:ct(T34.new("2p")) + hand:ct(T34.new("3p")) + hand:ct(T34.new("4p")) + hand:ct(T34.new("5p")) + hand:ct(T34.new("6p")) + hand:ct(T34.new("7p")) + hand:ct(T34.new("8p")) + hand:ct(T34.new("9p"))
  local pnp = np * np * 2
  local efanp = np * 3 + 25

  for i = 1, 9 do
    mount:lighta(T34.new(i .. "p"), pnp)
  end
  for _, t in ipairs(effas) do
    mount:lighta(t, efanp)
  end
end
