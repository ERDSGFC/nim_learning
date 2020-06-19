var
  i = 1;
var
  number: seq[int]
while i<=10:
  # number.add(i)
  add(number,i)
  i = i + 1
echo repr(number)
for index, items in number:
  echo "index:",index,"  value:",items
  
  