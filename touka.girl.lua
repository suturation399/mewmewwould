doge = 0
bakuhatsu = 0

function ondice()
  doge = rand:gen(40)
  
  if bakuhatsu ~= 0 then
    bakuhatsu = bakuhatsu + 1
  end
  
  if doge >= 35 then
    bakuhatsu = bakuhatsu + 1
  end
end

