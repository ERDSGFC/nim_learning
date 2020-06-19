proc add_w*(x: int, y: int): int =
  return x + y
proc contrast_echo* (x: int, y: int) =
  if x > y:
    echo "x > y"
  elif x < y:
    echo "x < y"
  else:
    echo "x = y"
  
# 模板