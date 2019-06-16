print("沒人能對抗風暴！")

function checkinit()
  junme = 0
  local selfwind = game:getselfwind(self)

  if who ~= self or iter > 3 then
    return true
  end

  if who == self and selfwind == 1 then
    return init:step() <= 3
  end

  if who == self and selfwind ~= 1 then
    return init:step() <= 4
  end
end

function ondraw()
  local hand = game:gethand(who)
  local effas = hand:effa()

  if rinshan then
    return
  end

  if who == self then
    junme = junme + 1
    if hand:ready() then
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * 133)
      end
    else
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * 13)
      end
    end
  end

  if who ~= self then
    if hand:ready() then
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * 3)
      end
    else
      for _, t in ipairs(hand:effa()) do
        mount:lighta(t, junme * 9)
      end
    end
  end
end
