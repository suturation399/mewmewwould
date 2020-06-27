function ondraw()
  local hands = game:gethand(self)
  local handr = game:gethand(self:right())
  local handc = game:gethand(self:cross())
  local handl = game:gethand(self:left())
  local hand = game:gethand()
  local effas = hands:effa()
  local steps = hands:step(self)
  local sw = game:getselfwind(self)
  local rw = game:getroundwind()
  
  if who == self then
    for _, t in ipairs(effas) do
      local neffas = mount:remaina(t)
      if neffas <= 0 then
        mount:lighta(t, 0)
      else
        if neffas == 1 then
          mount:lighta(t, 307)
        end
        if neffas == 2 then
          mount:lighta(t, 73)
        end
        if neffas == 3 then
          mount:lighta(t, 17)
        end
        if neffas == 4 then
          mount:lighta(t, 4)
        end
    if (mount:remainpii() <= 1 or rinshan) and hands:step() <= 1 then
      for _, t in ipairs(effas) do
        mount:lighta(t, 307)
      end
    end
    if hands:step() < 1 then
      if handr:step() < 1 then
        for _, t in ipairs(handr:effa()) do
          mount:lighta(t, -30)
        end
      end
      if handc:step() < 1 then
        for _, t in ipairs(handc:effa()) do
          mount:lighta(t, -30)
        end
      end
      if handl:step() < 1 then
        for _, t in ipairs(handl:effa()) do
          mount:lighta(t, -30)
        end
      end
    end
    if not hands:ismenzen() then
      if hands:ct(T34.new("1y")) > 0 and hands:ct(T34.new("1y")) < 3 and mount:remaina(T34.new("1y")) then
        mount:lighta(T34.new("1y"), 307)
      end
      if hands:ct(T34.new("2y")) > 0 and hands:ct(T34.new("2y")) < 3 and mount:remaina(T34.new("2y")) then
        mount:lighta(T34.new("2y"), 307)
      end
      if hands:ct(T34.new("3y")) > 0 and hands:ct(T34.new("3y")) < 3 and mount:remaina(T34.new("3y")) then
        mount:lighta(T34.new("3y"), 307)
      end
      if hands:ct(T34.new("3y")) > 0 and hands:ct(T34.new("3y")) < 3 and mount:remaina(T34.new("3y")) then
        mount:lighta(T34.new("3y"), 307)
      end
      if rw ==  1 and hands:ct(T34.new("1f")) > 0 and hands:ct(T34.new("1f")) < 3 and mount:remaina(T34.new("1f")) then
        mount:lighta(T34.new("1f"), 307)
      end
      if rw == 2 and hands:ct(T34.new("2f")) > 0 and hands:ct(T34.new("2f")) < 3 and mount:remaina(T34.new("2f")) then
        mount:lighta(T34.new("2f"), 307)
      end
      if rw == 3 and hands:ct(T34.new("3f")) > 0 and hands:ct(T34.new("3f")) < 3 and mount:remaina(T34.new("3f")) then
        mount:lighta(T34.new("3f"), 307)
      end
      if sw == 1 and hands:ct(T34.new("1f")) > 0 and hands:ct(T34.new("1f")) < 3 and mount:remaina(T34.new("1f")) then
        mount:lighta(T34.new("1f"), 307)
      end
      if sw == 2 and hands:ct(T34.new("2f")) > 0 and hands:ct(T34.new("2f")) < 3 and mount:remaina(T34.new("2f")) then
        mount:lighta(T34.new("2f"), 307)
      end
      if sw == 3 and hands:ct(T34.new("3f")) > 0 and hands:ct(T34.new("3f")) < 3 and mount:remaina(T34.new("3f")) then
        mount:lighta(T34.new("3f"), 307)
      end
      if sw == 4 and hands:ct(T34.new("4f")) > 0 and hands:ct(T34.new("4f")) < 3 and mount:remaina(T34.new("4f")) then
        mount:lighta(T34.new("4f"), 307)
      end
      mount:lighta(T34.new("1m"), -30)
      mount:lighta(T34.new("9m"), -30)
      mount:lighta(T34.new("1p"), -30)
      mount:lighta(T34.new("9p"), -30)
      mount:lighta(T34.new("1s"), -30)
      mount:lighta(T34.new("9s"), -30)
    end
  else
    if not hands:ismenzen() then
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, -15)
      end
      for _, t in ipairs(hands:effa()) do
        mount:lighta(t, 30)
      end
    end
  end
end
