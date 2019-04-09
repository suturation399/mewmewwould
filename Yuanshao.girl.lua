  -- 這是喵咪腦洞中國代表隊的先鋒
local love = 120

function checkinit()
  local selfwind = game:getselfwind(self)

  if who ~= self or iter > 50 or selfwind ~= 1 then
    return true
  end

  if who == self and selfwind == 1 then
    return init:step() <= 3
  end
end

function ondraw()
  if who ~= self or rinshan then
    return
  end

  local selfwind = game:getselfwind(self)
  local hand = game:gethand(self)
  local effas = hand:effa()

  if who == self and selfwind ~= 1 then
    return
  end

  if who == self and selfwind == 1 and fastpower <= 350 then
   love = love + 15
    for _, t in ipairs(effas) do
      mount:lighta(t, love)
    end
  end
end
