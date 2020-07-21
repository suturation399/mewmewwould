doge = 0
sp = 25

function ondice()
  local extra = game:getextraround()

  if extra == 0 then
    sp = 25
  end
  if extra == 1 then
    sp = 16
  end
  if extra >= 2 then
    sp = 8
  end
  
  doge = rand:gen(sp)
end

function onmonkey()
  status = doge
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local exist = exists[self:index()]
  
  if status <= 1 then
    exist:incmk(T34.new("1y"), 144)
    exist:incmk(T34.new("2y"), -15)
    exist:incmk(T34.new("3y"), -15)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -15)
    end
  end
  
  if status == 2 then
    exist:incmk(T34.new("2y"), 144)
    exist:incmk(T34.new("1y"), -15)
    exist:incmk(T34.new("3y"), -15)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -15)
    end
  end

  if status == 3 then
    exist:incmk(T34.new("3y"), 144)
    exist:incmk(T34.new("1y"), -15)
    exist:incmk(T34.new("2y"), -15)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -15)
    end
  end

  if status == 4 then
    if sw == 1 then
      exist:incmk(T34.new("1f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if sw == 2 then
      exist:incmk(T34.new("2f"), 144)
      exist:incmk(T34.new("1f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if sw == 3 then
      exist:incmk(T34.new("3f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("1f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if sw == 4 then
      exist:incmk(T34.new("4f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("1f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
  end
  
  if status == 5 then
    if rw == 1 then
      exist:incmk(T34.new("1f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if rw == 2 then
      exist:incmk(T34.new("2f"), 144)
      exist:incmk(T34.new("1f"), -15)
      exist:incmk(T34.new("3f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
    if rw >= 3 then
      exist:incmk(T34.new("3f"), 144)
      exist:incmk(T34.new("2f"), -15)
      exist:incmk(T34.new("1f"), -15)
      exist:incmk(T34.new("4f"), -15)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -15)
      end
    end
  end
  
  if status >= 6 then
    for i = 2, 8 do
      exist:incmk(T34.new(i .. "p"), 45)
      exist:incmk(T34.new(i .. "s"), 45)
      exist:incmk(T34.new(i .. "m"), 45)
    end
  end
end
