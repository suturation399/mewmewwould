function checkinit()
  junme = 0
  
  if who ~= self or iter > 222 then
    return true
  end
  
  return init:step7() == 5 and init:step4() <= 5
end
