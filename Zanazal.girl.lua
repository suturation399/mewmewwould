doge = 0

function ondice()
  doge = rand:gen(25)
end

function onmonkey()
  status = doge
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local exist = exists[self:index()]
  
  if status == 1 then
    exist:incmk(T34.new("1y"), 144)
    exist:incmk(T34.new("2y"), -14)
    exist:incmk(T34.new("3y"), -14)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -14)
    end
  end
  
  if status == 2 then
    exist:incmk(T34.new("2y"), 144)
    exist:incmk(T34.new("1y"), -14)
    exist:incmk(T34.new("3y"), -14)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -14)
    end
  end

  if status == 3 then
    exist:incmk(T34.new("3y"), 144)
    exist:incmk(T34.new("1y"), -14)
    exist:incmk(T34.new("2y"), -14)
    for i = 1, 4 do
      exist:incmk(T34.new(i .. "f"), -14)
    end
  end

  if status == 4 then
    if sw == 1 then
      exist:incmk(T34.new("1f"), 144)
      exist:incmk(T34.new("2f"), -14)
      exist:incmk(T34.new("3f"), -14)
      exist:incmk(T34.new("4f"), -14)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -14)
      end
    end
    if sw == 2 then
      exist:incmk(T34.new("2f"), 144)
      exist:incmk(T34.new("1f"), -14)
      exist:incmk(T34.new("3f"), -14)
      exist:incmk(T34.new("4f"), -14)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -14)
      end
    end
    if sw == 3 then
      exist:incmk(T34.new("3f"), 144)
      exist:incmk(T34.new("2f"), -14)
      exist:incmk(T34.new("1f"), -14)
      exist:incmk(T34.new("4f"), -14)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -14)
      end
    end
    if sw == 4 then
      exist:incmk(T34.new("4f"), 144)
      exist:incmk(T34.new("2f"), -14)
      exist:incmk(T34.new("3f"), -14)
      exist:incmk(T34.new("1f"), -14)
      for i = 1, 3 do
        exist:incmk(T34.new(i .. "y"), -14)
      end
    end
  end
  
  if status == 5 then
    if rw == 1 then
      exist:incmk(T34.new("1f"), 144)
    end
    if rw == 2 then
      exist:incmk(T34.new("2f"), 144)
    end
    if rw >= 3 then
      exist:incmk(T34.new("3f"), 144)
    end
  end
  
  if status >= 6 then
    for i = 2, 8 do
      exist:incmk(T34.new(i .. "p"), 44)
      exist:incmk(T34.new(i .. "s"), 44)
      exist:incmk(T34.new(i .. "m"), 44)
    end
  end
end

function checkinit()
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  
  if who ~= self or iter > 88 then
    return true
  end

  if status == 0 then
    return init:step() >= 3 and init:step() <= 4 and init:ct(T34.new("1y")) == 2
  end

  if status == 1 then
    return init:step() >= 3 and init:step() <= 4 and init:ct(T34.new("2y")) == 2
  end

  if status == 2 then
    return init:step() >= 3 and init:step() <= 4 and init:ct(T34.new("3y")) == 2
  end

  if status == 3 then
    if sw == 1 then
      return init:step() >= 3 and init:step() <= 4 and init:ct(T34.new("1f")) == 2
    end
    if sw == 2 then
      return init:step() >= 3 and init:step() <= 4 and init:ct(T34.new("2f")) == 2
    end
    if sw == 3 then
      return init:step() >= 3 and init:step() <= 4 and init:ct(T34.new("3f")) == 2
    end
    if sw == 4 then
      return init:step() >= 3 and init:step() <= 4 and init:ct(T34.new("4f")) == 2
    end
  end

  if status == 4 then
    if rw == 1 then
      return init:step() >= 3 and init:step() <= 4 and init:ct(T34.new("1f")) == 2
    end
    if rw == 2 then
      return init:step() >= 3 and init:step() <= 4 and init:ct(T34.new("2f")) == 2
    end
    if rw == 3 then
      return init:step() >= 3 and init:step() <= 4 and init:ct(T34.new("3f")) == 2
    end
  end

  if status >= 5 then
  local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
  return ny <= 3 and init:step() >= 3 and init:step() <= 4
  end
end
