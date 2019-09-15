mkByCt = {
  [0] = 0,
  [1] = -10,
  [2] = -30,
  [3] = 0,
  [4] = 0,
}

function checkinit()
  junme = 0
  
  if who ~= self or iter > 55 then
    return true
  end
  
  return init:step7() > init:step4() and init:step13() > init:step4()
end

function ondraw()
  if who ~= self or rinshan then
    return
  end
  
  local closed = game:gethand(self):closed()
  for _, t in ipairs(T34.all) do
    mount:lighta(t, mkByCt[closed:ct(t)])
  end
end
