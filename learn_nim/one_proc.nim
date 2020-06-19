#[
    proc a(): bool=
        类容
]#
#没有返回
proc a():bool {.discardable .} =
    # return true;
    echo "aa"
# echo a()
proc a(a:int):bool =
    if a == 1:
        return true
    else:
        return false
a()
discard a(2)#忽略返回调用
a()
proc b(a:string,b:int):int {.discardable.} =
    echo a
    echo b
b(a="f",b=2);