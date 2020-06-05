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
### 基础（https://nim-lang-cn.org/docs/tut1.html）
1. 编译并运行命令
[更多编译的文档详情](https://nim-lang-cn.org/docs/nimc.html)

> nim compile --run object_file.nim # 普通命令  
> nim compile --run object_file.nim arg1 arg2 # 添加参数  
> nim c -r object_file.nim # 简写  
> nim c -d:danger object_file.nim # 生成性能更好的代码  
2. 注释
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
文档注释是令牌；它们只允许在输入文件中的某些位置，因为它们属于语法树！这个功能可实现更简单的文档生成器。  

3. 声明变量  
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

const x = "abc" #常量
const input = readLine(stdin) # 错误: 需要常量表达式

let x= "abc" #只读变量
let input = readLine(stdin)   # 可以

```
注意，使用过程对声明的多个变量进行赋值时可能会产生意外结果：编译器会 展开 赋值并`多次调用该过程`。 如果程序的结果取决于副作用，变量可能最终会有不同的值。为了安全起见，多赋值时使用没有副作用的`过程`。  

4. 字符串
```nim
echo "换行"
echo '\t'
echo 'a' #字符
echo "制表符\t制表符" #字符串
echo r"C:\program files\nim" #原始字符串
var html = """<div></div>"""
``` 

