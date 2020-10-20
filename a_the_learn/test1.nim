import macros

macro test(body: untyped): untyped =
#   result = nnkStmtList.newTree()
  echo body[0][0]
  let a = newTree
#   echo a.astGenRepr
#   echo (body[0][1].copyNimNode).astGenRepr
  echo body.astGenRepr

var 
  i: int = 10
  str: string = ""

test:
  str = $i

  
  
    