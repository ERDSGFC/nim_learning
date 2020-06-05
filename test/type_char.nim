var 
    a: char
    b: char = 'b'
    # c: char = "a" 错误
    d = 'd'
    e = '\t' # 换行符
if a == b:
    echo "a 和 b 相等"
elif a < b:
    echo "a 小于 b"
else:
    echo "a 和 b 不相等"
echo a.ord # 0
echo b.ord # 98
echo typeof a # char
echo typeof(a) # char
echo $b.typeof # char
echo ($b).typeof # string
inc(d, 1)
echo d
echo e
dec(d, 2)
echo d
echo succ(d)
