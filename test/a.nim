proc algo*[T] =
  proc a: T =
    mixin initE
    result = initE[T]()
    result += 3
  
  echo "algo", a()