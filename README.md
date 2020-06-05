Nim 学习记录 
===========
![学习参考网站](https://nim-lang-cn.org/assets/img/logo.svg) 
### 学习参考网站 


[TOC]

TAGS: 静态类型 编译型 系统编程

* [__下载地址__][12]

[12]: https://nim-lang-cn.org/install.html 

* [__nim中文社区__](https://nim-lang-cn.org/)

* [__nim手册__](https://nim-lang-cn.org/docs/manual.html) 
---
### nim邮件组 : 

1. <ch4o5@nim-lang-cn.org>
    <!-- * dfsdf -->
2. <sheldon@nim-lang-cn.org>
3. <flywind@nim-lang-cn.org>
4. <tulayang@nim-lang-cn.org>

-----
### 基础 [Nim教程 (I)](https://nim-lang-cn.org/docs/tut1.html)
#### 1. 编译并运行命令
[更多编译的文档详情](https://nim-lang-cn.org/docs/nimc.html)

> nim compile --run object_file.nim # 普通命令  
> nim compile --run object_file.nim arg1 arg2 # 添加参数  
> nim c -r object_file.nim # 简写  
> nim c -d:danger object_file.nim # 生成性能更好的代码  
#### 2. 注释
```nim 
# 注释

var myVariable:int ##文档注释
#[
您可以注释任何Nim代码文本在里面没有缩进限制。
      随便什么
  #[
     Note: 这里也可以是注释
]#
##[
    这也是注释
]##

discard """这也是注释"""
```
文档注释是令牌；它们只允许在输入文件中的某些位置，因为它们属于语法树！这个功能可实现更简单的文档生成器。`暂时没理解`  

#### 3. 声明变量  
```nim
var 
    a: bool
    # 十六进制字面值前缀是 0x ，二进制字面值用 0b ，八进制用 0o
    b,c: int
    b1,c1: int = 1_000_000 #数字字面值允许使用下划线： 1_000_000 (一百万)
    
    b2,c2 = 1000000
    d,e: string
    f: float
    g: char
    #序数类型（由整数，bool，字符，枚举（及其子范围）类型组成）

const x = "abc" #常量
const input = readLine(stdin) # 错误: 需要常量表达式

let x= "abc" #只读变量
let input = readLine(stdin)   # 可以
-----------------------------------------------------
var a = 1_2
echo a
proc test(a: var int,b:int=1): int =
      a = a + 1
      return a

var c,d = test(a)

echo c,'\t',d,'\t',a
echo typeof(c)

```
注意，使用过程对声明的多个变量进行赋值时可能会产生意外结果：编译器会 展开 赋值并`多次调用该过程`。 如果程序的结果取决于副作用，变量可能最终会有不同的值。为了安全起见，多赋值时使用没有副作用的`过程`。

#### 4. 布尔类型 `bool`  [示例](https://github.com/ERDSGFC/nim_learning/blob/develop/test/type_bool.nim)
```nim
var
    a: bool
    b: bool = true
    c = false
c(false) == 0 and b(true) == 1
```
为布尔类型定义操作符 not, and, or, xor, <, <=, >, >=, !=, ==  

#### 5. 字符类型 `char`  [示例](https://github.com/ERDSGFC/nim_learning/blob/develop/test/type_char.nim)
```nim
var 
    a: char
    b: char = 'b'
    b1: char = "b" #错误
    d = 'd'
    e = '\t'
```
字符类型,大小总是一字节,字符字面值用单引号括起来  
字符可以用 ==, <, <=, >, >= 操作符比较。 $ 操作符将一个 char 转换成一个 string 。字符不能和整型混合；用 ord 过程得到一个 char 的序数值。 从整型到 char 转换使用 chr 过程
`inc, ord, dec `
#### 6.字符串类型 `string`
```nim
var 
    a: string
    b: string = "换行\t嘿嘿"
    c = "制表符\t制表符"
    d = r"C:\program files\nim" #原始字符串
    html = """<div></div>""" #多行原始字符串
``` 
字符串可以追加，而且非常高效,内置 len 过程获取  
你可以用 & 操作符拼接字符串和 add 追加到一个字符串  
索引操作符 s[i] 表示 s 的第i个 字符 , 不是第i个 unichar 
#### 7.整型 `int int8 int16 int32 int64 uint uint8 uint16 uint32 uint64`
整数支持通用操作符 + - * div mod < <= == != > >= 。 也支持 and or xor not 操作符，并提供 按位 操作。 左移用 shl ，右移用 shr 。位移操作符实参总是被当作 无符号整型 。 普通乘法或除法可以做 算术位移 。
无符号操作不会引起上溢和下溢。
无损 自动类型转换 在表达式中使用不同类型的整数时执行。如果失真，会抛出 EOutOfRange 异常（如果错误没能在编译时检查出来）
#### 8.浮点型 `float float32 float64`
使用 toInt 和 toFloat 过程来转换
#### 9.枚举 `enum`
#### 10.子范围 `range`
#### 11.集合类型 `set`
#### 12.位字段 
#### 13.数组 `array`
#### 14.序列 `seq`

