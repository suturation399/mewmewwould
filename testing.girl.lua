doge = 0
junme = 1
updown = 1

function ondice()
  doge = rand:gen(10)
end

function ondraw()
  status = doge
  junme = junme + 1
  local drids = mount:getdrids()
  local hands = game:gethand(self)
  local steps = hands:step(self)
  local junmk = junme 
  local ctx = game:getformctx(self)
  
  if rinshan then
    return
  end
  
  updown = mount:remainpii()
  if updown > 1 then
    updown = updown - 2
  end
  
  if un
