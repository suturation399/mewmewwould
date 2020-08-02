lv5tars = {
  "9m", "9p", "9s" 
}

lv4tars = {
  "8m", "8p", "8s"
}

lv3tars = {
  "7m", "7p", "7s"
}

lv2tars = {
  "6m", "6p", "6s"
}

powers = {
  [lv5tars] = 330,
  [lv4tars] = 230,
  [lv3tars] = 330,
  [lv2tars] = 80
}

doge = 0
bakuhatsu = 0

function ondice()
  doge = rand:gen(50)
  
  if doge >= 40 then
    bakuhatsu = bakuhatsu + 1
  end
end

function onmonkey()
  status = doge
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  local exist = exists[self:index()]
  
  if bakuhatsu <= 0 then
    if status <= 1 then
      exist:incmk(T34.new("1y"), 144)
    end
    
    if status == 2 then
      exist:incmk(T34.new("2y"), 144)
    end

    if status == 3 then
      exist:incmk(T34.new("3y"), 144)
    end

    if status == 4 then
      if sw == 1 then
        exist:incmk(T34.new("1f"), 144)
      end
      if sw == 2 then
        exist:incmk(T34.new("2f"), 144)
      end
      if sw == 3 then
        exist:incmk(T34.new("3f"), 144)
      end
      if sw == 4 then
        exist:incmk(T34.new("4f"), 144)
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
        exist:incmk(T34.new(i .. "p"), 25)
        exist:incmk(T34.new(i .. "s"), 25)
        exist:incmk(T34.new(i .. "m"), 25)
      end
    end
  else
    print("感覺似乎不錯呢")
    for tars, mk in pairs(powers) do
      for _, t in ipairs(tars) do
        exists[self:index()]:incmk(T34.new(t), mk)
      end
    end
  end
end

function checkinit()
  junme = 0
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  
  if who ~= self or iter > 86 then
    return true
  end
  
  if bakuhatsu <= 0 then 
    if status <= 1 then
      return init:step() >= 3 and init:step() <= 4 and init:step7() >= 4 and init:ct(T34.new("1y")) == 2
    end
  
    if status == 2 then
      return init:step() >= 3 and init:step() <= 4 and init:step7() >= 4 and init:ct(T34.new("2y")) == 2
    end

    if status == 3 then
      return init:step() >= 3 and init:step() <= 4 and init:step7() >= 4 and init:ct(T34.new("3y")) == 2
    end

    if status == 4 then
      if sw == 1 then
        return init:step() >= 3 and init:step() <= 4 and init:step7() >= 4 and init:ct(T34.new("1f")) == 2
      end
      if sw == 2 then
        return init:step() >= 3 and init:step() <= 4 and init:step7() >= 4 and init:ct(T34.new("2f")) == 2
      end
      if sw == 3 then
        return init:step() >= 3 and init:step() <= 4 and init:step7() >= 4 and init:ct(T34.new("3f")) == 2
      end
      if sw == 4 then
        return init:step() >= 3 and init:step() <= 4 and init:step7() >= 4 and init:ct(T34.new("4f")) == 2
      end
    end

    if status == 5 then
      if rw == 1 then
        return init:step() >= 3 and init:step() <= 4 and init:step7() >= 4 and init:ct(T34.new("1f")) == 2
      end
      if rw == 2 then
        return init:step() >= 3 and init:step() <= 4 and init:step7() >= 4 and init:ct(T34.new("2f")) == 2
      end
      if rw == 3 then
        return init:step() >= 3 and init:step() <= 4 and init:step7() >= 4 and init:ct(T34.new("3f")) == 2
     end
    end

    if status >= 6 then
      local ny = init:ct(T34.new("1m")) + init:ct(T34.new("9m")) + init:ct(T34.new("1p")) + init:ct(T34.new("9p")) + init:ct(T34.new("1s")) + init:ct(T34.new("9s")) + init:ct(T34.new("1f")) + init:ct(T34.new("2f")) + init:ct(T34.new("3f")) + init:ct(T34.new("4f")) + init:ct(T34.new("1y")) + init:ct(T34.new("2y")) + init:ct(T34.new("3y"))
      return ny <= 3 and init:step() >= 3 and init:step() <= 4
    end
  else
    
