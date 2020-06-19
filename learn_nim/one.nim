echo "请输入你的名称"
var name: string = readLine(stdin)

echo "你好",name,""
#各种打印
## 文档注释 只能存在某些地方

echo "换行"
echo '\t'
echo 'a' #字符
echo "制表符\t制表符" #字符串
echo r"C:\program files\nim" #原始字符串
var html = """<div></div>"""

echo html
var a = 1_2
echo a
proc test(a: var int,b:int=1): int =
      a = a + 1
      return a

var c,d = test(a)

echo c,'\t',d,'\t',a
echo typeof(c)
# 声明变量的必须要 注明类型 （类型推导）


##[
 跨行的注释   
]##
discard """ You can have any Nim code text commented
out inside this with no indentation restrictions.
      yes("May I ask a pointless question?") """
