var 
    a: bool
    b: bool = true
    c = false
a = true
if a:
    echo "真"
else:
    echo "假"

a = false
if a and b:
    echo "a 和 b 都为真"
elif a and b == false:
    echo "a 为真，b 为假"
elif a == false and b:
    echo "a 为假，b 为真"
else:
    echo "a b 都为假"

if a or b:
    echo "a 或者 b 为真"
else:
    echo "a 和 b 都为假"

if b or c:
    if b xor c:
        echo "b 或者 c 为真"
    else:
        echo "b 和 c 为真"
else:
    echo "b 和 c 都为假"