doge = 0

function ondice()
  doge = rand:gen(3)
end

function onmonkey()
  local exist = exists[self:index()]
  local extra = game:getextraround()
  status = doge
  
  if extra < 3 then
    if status <= 1 then
      for i = 1, 9 do
        exist:incmk(T34.new(i .. "p"), -39)
        exist:incmk(T34.new(i .. "s"), -39)
      end
      for i = 1, 4 do
        exist:incmk(T34.new(i .. "f"), -39)
      end
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -39)
      end
    end
    if status == 2 then
      for i = 1, 9 do
        exist:incmk(T34.new(i .. "m"), -39)
        exist:incmk(T34.new(i .. "s"), -39)
      end
      for i = 1, 4 do
        exist:incmk(T34.new(i .. "f"), -39)
      end
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -39)
      end
    end
    if status >= 3 then
      for i = 1, 9 do
        exist:incmk(T34.new(i .. "p"), -39)
        exist:incmk(T34.new(i .. "m"), -39)
      end
      for i = 1, 4 do
        exist:incmk(T34.new(i .. "f"), -39)
      end
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -39)
      end
    end
  else
    for i = 1, 9 do
      exist:incmk(T34.new(i .. "p"), -39)
      exist:incmk(T34.new(i .. "s"), -39)
      exist:incmk(T34.new(i .. "m"), -39)
    end
  end
end

function checkinit()
  junme = 0
  local extra = game:getextraround()
  
  if who ~= self or iter > 399 then
    return true
  end

  if extra < 3 then
    if status <= 1 then
      return init:closed():ct("m") == 13
    end
    if status == 2 then
      return init:closed():ct("p") == 13
    end
    if status >= 3 then
      return init:closed():ct("s") == 13
    end
  else
    return (init:closed():ct("s") == 0 and init:closed():ct("p") == 0 and init:closed():ct("s") == 0)
  end
end

function ondraw()
