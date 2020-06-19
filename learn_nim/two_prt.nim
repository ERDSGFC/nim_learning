type
  REP_TUPLE = ref tuple [name:string,age:int]

var
  a: REP_TUPLE
new(a)
a.age = 21
echo a.name, a.age