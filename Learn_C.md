学习C
================

* [安装环境 （gcc）](#1-gcc编译简单介绍)
    1. [学习gcc编译](http://c.biancheng.net/gcc/)
* 

-----------------------------

1. gcc编译简单介绍
```c
gcc -E test.c -o test.i
gcc -E -C test.c -o test.i //阻止预处理器删除源文件和头文件中的注释
//http://c.biancheng.net/view/2375.html

gcc -S test.c -o test.s
gcc -S -fverbose-asm test.c -o test.s //如果想把C语言变量的名称作为汇编语言语句中的注释，可以加上-fverbose-asm选项：

gcc -c func.c main.c //使用-c选项编译两个源文件

```
.i文件`预处理文件`，.s文件`汇编文件`，.o文件`目标文件`  
当使用 GCC 编译和链接程序时，对于其他的库（例如非标准库、第三方库等），就需要手动添加
```c
//例如，如果链接库名为 libm.a，并且位于 /usr/lib 目录，那么下面的命令会让 GCC 编译 main.c，然后将 libm.a 链接到 main.o

gcc main.c -o main.out /usr/lib/libm.a
//使用-L选项，为 GCC 增加另一个搜索链接库的目录：
gcc main.c -o main.out -L/usr/lib -lm
//把包括所需链接库的目录加到环境变量 LIBRARYPATH 中
```

生成动态链接库  
另外还得结合-fPIC选项。-fPIC 选项作用于编译阶段，告诉编译器产生与位置无关代码（Position-Independent Code）；这样一来，产生的代码中就没有绝对地址了，全部使用相对地址，所以代码可以被加载器加载到内存的任意位置，都可以正确的执行。这正是共享库所要求的，共享库被加载时，在内存的位置不是固定的。
```c
gcc -fPIC -shared func.c -o libfunc.so

gcc -fPIC -c func.c -o func.o
gcc -shared func.o -o libfunc.so

gcc main.c libfunc.so -o app.out
```
[静态链接库](http://c.biancheng.net/view/7168.html)