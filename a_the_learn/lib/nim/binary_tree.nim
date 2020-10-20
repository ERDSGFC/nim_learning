type
  BinaryTree*[T] = ref object
    le*,ri*: BinaryTree[T]
    data*: T
proc newNode*[T](data: T): BinaryTree[T] =
  result = BinaryTree[T](le: nil, ri: nil, data: data)
  
# proc newNode*[T](data: T): BinaryTree[T] =
#   # 构造一个节点
#   result = BinaryTree[T](le: nil, ri: nil, data: data)

# proc add*[T](root: var BinaryTree[T], n: BinaryTree[T]) =
#   # 把节点插入到一颗树
#   if root == nil:
#     root = n
#   else:
#     var it = root
#     while it != nil:
#       # 比较数据项;使用泛型 ``cmp`` proc，适用于任何具有``==``和````运算符的类型
#       var c = cmp(it.data, n.data)
#       if c < 0:
#         if it.le == nil:
#           it.le = n
#           return
#         it = it.le
#       else:
#         if it.ri == nil:
#           it.ri = n
#           return
#         it = it.ri

# proc add*[T](root: var BinaryTree[T], data: T) =
#   # 便利过程:
#   add(root, newNode(data))

# iterator preorder*[T](root: BinaryTree[T]): T =
#   # 前序遍历二叉树
#   # 由于递归迭代器尚未实现，因此它使用显式堆栈（因为更高效）：
#   var stack: seq[BinaryTree[T]] = @[root]
#   while stack.len > 0:
#     var n = stack.pop()
#     while n != nil:
#       yield n.data
#       add(stack, n.ri)  # 将右子树推入堆栈
#       n = n.le          # 跟着左指针

# var
#   root: BinaryTree[string] # 使用 ``string`` 实例化二叉树
# add(root, newNode("hello")) # 实例化 ``newNode`` 和 ``add``
# add(root, "world")          # 实例化第二个 ``add`` proc
# for str in preorder(root):
#   stdout.writeLine(str)