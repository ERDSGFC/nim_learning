import type_object, other/type_proc as other_type_proc
# import other/type_object as other_type_object
# from other/type_proc 

var 
  person: Person

new person

person.name = "hhh"
person.age = 12
echo person.age

echo person[]

echo other_type_proc.add_w(12, 13)

contrast_echo(12, 12)

type
  Expression = ref object of RootObj ## abstract base class for an expression
  Literal = ref object of Expression
    x: int
  PlusExpr = ref object of Expression
    a, b: Expression

# 注意：'eval'依赖于动态绑定
method eval(e: Expression): int {.base.} =
  # 重写基方法
  quit "to override!"

method eval(e: Literal): int = e.x
method eval(e: PlusExpr): int = eval(e.a) + eval(e.b)

proc newLit(x: int): Literal = Literal(x: x)
proc newPlus(a, b: Expression): PlusExpr = PlusExpr(a: a, b: b)

echo newLit(1).typeof
echo newPlus(newPlus(newLit(1), newLit(2)), newLit(4))[]
echo eval(newPlus(newPlus(newLit(1), newLit(2)), newLit(4)))

const
  debug = true

template log(msg: string) =
  if debug: stdout.writeLine(msg)

var
  x = 4
log("x has the value: " & $x)

template withFile(f: untyped, filename: string, mode: FileMode,
                  body: untyped) =
  let fn = filename
  var f: File
  if open(f, fn, mode):
    try:
      body
    finally:
      close(f)
  else:
    quit("cannot open: " & fn)

withFile(txt, "ttempl3.txt", fmWrite):
  txt.writeLine("line 1")
  txt.writeLine("line 2")

proc myWriteln(f: File, a: varargs[string], c: int) =
  echo c
  for s in items(a):
    write(f, s)
  write(f, "\n")

myWriteln(stdout, "abc", "def", "xyz", 9)
# 转换成:
# myWriteln(stdout, ["abc", "def", "xyz"])