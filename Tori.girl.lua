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
        exist:incmk(T34.new(i .. "p"), -99)
        exist:incmk(T34.new(i .. "s"), -99)
      end
      for i = 1, 4 do
        exist:incmk(T34.new(i .. "f"), -99)
      end
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -99)
      end
    end
    if status == 2 then
      for i = 1, 9 do
        exist:incmk(T34.new(i .. "m"), -99)
        exist:incmk(T34.new(i .. "s"), -99)
      end
      for i = 1, 4 do
        exist:incmk(T34.new(i .. "f"), -99)
      end
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -99)
      end
    end
    if status >= 2 then
      for i = 1, 9 do
        exist:incmk(T34.new(i .. "p"), -99)
        exist:incmk(T34.new(i .. "m"), -99)
      end
      for i = 1, 4 do
        exist:incmk(T34.new(i .. "f"), -99)
      end
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -99)
      end
    end
  else
    for i = 1, 9 do
      exist:incmk(T34.new(i .. "p"), -99)
      exist:incmk(T34.new(i .. "s"), -99)
      exist:incmk(T34.new(i .. "m"), -99)
    end
  end
end

