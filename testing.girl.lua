lv5tars = {
  "1m", "2m", "3m", "4m", "5m", "6m", "7m", "8m", "9m", "3y" 
}

lv4tars = {
  "6p", "7p", "9p", "9s"
}

lv3tars = {
  "1p", "3p", "5p", "1s", "5s", "7s"
}

powers = {
  [lv5tars] = 90,
  [lv4tars] = 60,
  [lv3tars] = 30
}

function onmonkey()
  for tars, mk in pairs(powers) do
    for _, t in ipairs(tars) do
      exists[self:index()]:incmk(T34.new(t), mk)
    end
  end
end

function ondraw()
  if who ~= self or rinshan then
    return
  end

  for tars, mk in pairs(powers) do
    for _, t in ipairs(tars) do
      mount:lighta(T34.new(t), mk)
    end
  end
end
