import math
import lib\nim\[binary_tree, kmp, static_lists]

# proc printf(format: ptr char): cint {.importc header: "stdio.h", varargs.}

# type
#   Person = object
#     name*: string
#     age*: int

# proc getPerson(): Person = 
#   return Person(name: "Jack",age:233)

# var
#   a: Person = getPerson()
#   b = new(Person)
#   c = (a)

# discard printf(cast[ptr char]("%p-%p\t%p-%p\n"), addr(a), addr(c))
# # c[].name = "11"
# echo addr(a.name).repr
# echo addr(a).repr, addr(a.age).repr
# echo addr(c).repr, addr(c.age).repr
# echo b.repr
# echo c[].typeof
# echo c[].name

# type
#   Person = object
#     name: string
#     age: int

# var
#   a: Person = Person(age: 12, name: "hh")
#   b = new(Person)
#   c = addr(b)
# b.name = "ok"
# echo a.repr, addr(a).repr
# echo b[].repr, b.repr

# echo c.repr, c[][]
type
  Buffer = object
    fd: int

method writeData[T](buffer: Buffer, data: var T): bool =
  var
    a = 23
  discard a.addr
  # write
  echo data.addr.repr
  return true

var
  buff = Buffer(fd: 0)
  a = 100
discard buff.writeData(a)
