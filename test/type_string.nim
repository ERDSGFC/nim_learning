var 
    a: string
    b: string = "换行\n嘿嘿"
    c = "制表符\t制表符"
    d = r"C:\program files\nim" #原始字符串
    html = """<div></div>""" #多行原始字符串
a = "字符串可以追加，而且非常高效\t"
echo a, b, c, d, html
echo a.len
a = "喔喔喔"
echo a.len #索引操作符 s[i] 表示 s 的第i个 字符 , 不是第i个 unichar
echo a[0]
echo "a 拼接 c:" & a & c

a.add("追加字符串")
echo a