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
  
  if who ~= self then
    return 
  end
  
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
        if neffas >= 4 then
          mount:lighta(t, 4)
        end
      end
    end
  end
end
