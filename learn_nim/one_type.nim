# bool true false
# 操作符 not, and, or, xor, <, <=, >, >=, !=, ==
var 
    flag: bool =true
    other_flag: bool
other_flag = false
echo flag,"\t",other_flag

#char 1KB  ==, <, <=, >, >= 操作符比较  $转 string   char ord  int chr

# string len 获取长度 & add

# repr() 字符串化

# Nim有以下内置整型： int int8 int16 int32 int64 uint uint8 uint16 uint32 uint64 
# 整数支持通用操作符 + - * div mod < <= == != > >= 。 也支持 and or xor not 操作符，
# 并提供 按位 操作。 左移用 shl ，右移用 shr 。位移操作符实参总是被当作 无符号整型 。 普通乘法或除法可以做 算术位移 
let
    x = 0     # x是 ``int``
    y = 0'i8  # y是 ``int8``
    z = 0'i64 # z是 ``int64``
    u = 0'u   # u是 ``uint``
echo x,"\t",y,"\t",z,"\t",u

# 浮点型 float float32 float64
#浮点类型支持通用操作符 + - * / < <= == != > >= 并遵循IEEE-754标准。

# 自动类型转换在表达式中使用不同类型时执行：短类型转换为长类型。
var
    f = 0.2
    f32 = 1.5'f32

#整数类型 不 会自动转换为浮点类型，反之亦然。使用 toInt 和 toFloat 过程来转换。
echo int(f), toInt(f32)


# 常量 const
const 
    cl2 = 'c'
    cl2int = 1
    cl2intf = cl2int + 1 #可计算

# 单赋值 let
let
    fz = 1
    fs = 2

let input = readLine(stdin)   # 可以写表达式

type
    ifsd = int32

#[  
    if flag:
        true
    elif flag:
        false
    else:

    case name

    of 1:

    of 2:

    else:
        discard
]#