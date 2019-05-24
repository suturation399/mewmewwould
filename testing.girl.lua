lv5tars = {
  "1f", "2f", "3f", "4f", "1y"
}

lv4tars = {
  "2p", "4p", "8p", "2y"
}

lv3tars = {
  "2s", "3s", "4s", "6s", "8s", "2y"
}

powers = {
  [lv5tars] = 99,
  [lv4tars] = 66,
  [lv3tars] = 33
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
