function onmonkey()
  local existl = exists[self:left():index()]
  local existc = exists[self:cross():index()]
  local existr = exists[self:right():index()]

  existl:incmk(T34.new("1m"), -20)
  existl:incmk(T34.new("9m"), -20)
  existl:incmk(T34.new("1p"), -20)
  existl:incmk(T34.new("9p"), -20)
  existl:incmk(T34.new("1s"), -20)
  existl:incmk(T34.new("9s"), -20)
  existl:incmk(T34.new("1f"), -20)
  existl:incmk(T34.new("2f"), -20)
  existl:incmk(T34.new("3f"), -20)
  existl:incmk(T34.new("4f"), -20)
  existl:incmk(T34.new("1y"), -20)
  existl:incmk(T34.new("2y"), -20)
  existl:incmk(T34.new("3y"), -20)
  existc:incmk(T34.new("1m"), -20)
  existc:incmk(T34.new("9m"), -20)
  existc:incmk(T34.new("1p"), -20)
  existc:incmk(T34.new("9p"), -20)
  existc:incmk(T34.new("1s"), -20)
  existc:incmk(T34.new("9s"), -20)
  existc:incmk(T34.new("1f"), -20)
  existc:incmk(T34.new("2f"), -20)
  existc:incmk(T34.new("3f"), -20)
  existc:incmk(T34.new("4f"), -20)
  existc:incmk(T34.new("1y"), -20)
  existc:incmk(T34.new("2y"), -20)
  existc:incmk(T34.new("3y"), -20)
  existr:incmk(T34.new("1m"), -20)
  existr:incmk(T34.new("9m"), -20)
  existr:incmk(T34.new("1p"), -20)
  existr:incmk(T34.new("9p"), -20)
  existr:incmk(T34.new("1s"), -20)
  existr:incmk(T34.new("9s"), -20)
  existr:incmk(T34.new("1f"), -20)
  existr:incmk(T34.new("2f"), -20)
  existr:incmk(T34.new("3f"), -20)
  existr:incmk(T34.new("4f"), -20)
  existr:incmk(T34.new("1y"), -20)
  existr:incmk(T34.new("2y"), -20)
  existr:incmk(T34.new("3y"), -20)
end

function checkinit()
  if who ~= self or iter > 99 then
    return true
  end

  return init:step13() <= 5
end

function ondraw()
  if rinshan then
    return
  end

  if who == self then
  mount:lighta(T34.new("1m"), 300)
  mount:lighta(T34.new("9m"), 300)
  mount:lighta(T34.new("1p"), 300)
  mount:lighta(T34.new("9p"), 300)
  mount:lighta(T34.new("1s"), 300)
  mount:lighta(T34.new("9s"), 300)
  mount:lighta(T34.new("1f"), 300)
  mount:lighta(T34.new("2f"), 300)
  mount:lighta(T34.new("3f"), 300)
  mount:lighta(T34.new("4f"), 300)
  mount:lighta(T34.new("1y"), 300)
  mount:lighta(T34.new("2y"), 300)
  mount:lighta(T34.new("3y"), 300)
  end

  if who ~= self then
  mount:lighta(T34.new("1m"), -20)
  mount:lighta(T34.new("9m"), -20)
  mount:lighta(T34.new("1p"), -20)
  mount:lighta(T34.new("9p"), -20)
  mount:lighta(T34.new("1s"), -20)
  mount:lighta(T34.new("9s"), -20)
  mount:lighta(T34.new("1f"), -20)
  mount:lighta(T34.new("2f"), -20)
  mount:lighta(T34.new("3f"), -20)
  mount:lighta(T34.new("4f"), -20)
  mount:lighta(T34.new("1y"), -20)
  mount:lighta(T34.new("2y"), -20)
  mount:lighta(T34.new("3y"), -20)
  end
end
