a = 1103515245
c = 12345
m = 2 ^ 32 - 1
seed = 1

function random()
  seed = (a * seed + c) % m
  return seed
end

function onmonkey()
  status = random() % 6
end


