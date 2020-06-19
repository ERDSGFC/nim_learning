import json

import json

var hisName = "John"
let herAge = 31
var j = %*
  [
    { "name": hisName, "age": 30 },
    { "name": "Susan", "age": herAge }
  ]

var j2 = %* {"name": "Isaac", "books": ["Robot Dreams"]}
j2["details"] = %* {"age":35, "pi":3.1415}
# j2["details"].delete("age")
echo j2["details"].kind
echo j2
# doAssert jsonNode.kind == JObject
# doAssert jsonNode["key"].kind == JFloat

# var
#   fruits:   seq[string]       # 字符串序列用 '@[]' 初始化
#   capitals: array[3, string]  # 固定大小的字符串数组

# capitals = ["New York", "London", "Berlin"]   # 数组 'capitals' 允许只有三个元素的赋值
# echo capitals.repr 
# echo fruits.repr
# fruits.add("Banana")          # 序列 'fruits' 在运行时动态扩展
# fruits.add("Mango")
# echo capitals.repr
# echo fruits.repr
# proc openArraySize(oa: openArray[string]): int =
#   oa.len

# assert openArraySize(fruits) == 2     # 过程接受一个序列作为形参
# assert openArraySize(capitals) == 3  