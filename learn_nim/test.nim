type TGenericSeq = object
  len, reserved: int

var a = @[10, 20, 30]

for i in 0..4:
  echo cast[ptr TGenericSeq](a).repr
  a.add i