Nim 的 OOP
===========
![学习参考网站](https://nim-lang-cn.org/assets/img/logo.svg) 


* 自动类型 (auto) [`用于形参 和 返回`](https://nim-lang-cn.org/docs/manual.html#%E7%B1%BB%E5%9E%8B-%E8%87%AA%E5%8A%A8%E7%B1%BB%E5%9E%8B)
* Distinct类型 (distinct) [没完全懂](https://nim-lang-cn.org/docs/manual.html#%E7%B1%BB%E5%9E%8B-distinct%E7%B1%BB%E5%9E%8B)  
* 过程类型 `过程类型在内部是指向过程的指针。 nil 是过程类型变量的允许值`
[过程类型只有在具有相同的调用约定时才是兼容的 默认`nimcall `](https://nim-lang-cn.org/docs/manual.html#%E7%B1%BB%E5%9E%8B-%E8%BF%87%E7%A8%8B%E7%B1%BB%E5%9E%8B)
* Not nil注解 [将nil排除](https://nim-lang-cn.org/docs/manual.html#%E7%B1%BB%E5%9E%8B-not-nil%E6%B3%A8%E8%A7%A3)
* 将GC内存和 ptr 混用  



* 未检查数组 (UncheckedArray) [`data: UncheckedArray[int]`](https://nim-lang-cn.org/docs/manual.html#%E7%B1%BB%E5%9E%8B-%E6%9C%AA%E6%A3%80%E6%9F%A5%E6%95%B0%E7%BB%84)
* 可变参数 (varargs) [没完全懂](https://nim-lang-cn.org/docs/manual.html#%E7%B1%BB%E5%9E%8B-%E5%8F%AF%E5%8F%98%E5%8F%82%E6%95%B0)
* 开放数组 （openarray）[`用于参数`](https://nim-lang-cn.org/docs/manual.html#%E7%B1%BB%E5%9E%8B-%E5%BC%80%E6%94%BE%E6%95%B0%E7%BB%84%EF%BC%88openarray%EF%BC%89)
* 数组和序列类型
* 结构化类型 `结构化类型的变量可以同时保存多个值。 结构化类型可以嵌套到无限级别。 数组、序列、元组、对象和集合属于结构化类型。`
    1. array[0..5, int]
    2. seq[int]
    3. tuple[name: string, age: int]
    4. object(name: "Anton", age: 5, id: 3)
* cstring类型 (cstring) [`表示一个指向零终止char数组的指针`](https://nim-lang-cn.org/docs/manual.html#%E7%B1%BB%E5%9E%8B-cstring%E7%B1%BB%E5%9E%8B)








