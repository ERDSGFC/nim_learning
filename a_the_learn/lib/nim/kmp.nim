
proc next*(str: string): seq[int] =
  var
    next =  newSeq[int](str.len) #生成 next 数组 用来保存 字符匹配失败时的偏移量
    j = -1 
    i = 0 
  next[0] = -1 # 首字符 不匹配向后移动

  while i < str.len-1: # str: abababca|aacaaaccef
    if j == (-1) and i == 0: #
      i += 1
      j += 1
      next[i] = j
    elif str[i] == str[j]:
      i += 1 # 计算的是下一个的字符的next 偏移量 所以先 + 1，
      j += 1 # 偏移量为 前后缀的最大重复 + 1 所以先 + 1， 
      next[i] = j
    elif j == 0: #回退到第一个字符且，未能匹配成功 减少不必要的循环次数（与网上写法稍微不同）
      i += 1
      next[i] = j
    else:
      j = next[j] #aacaaaccef 回退一个前缀字符

  result = next # 返回模式串的next 移动表

proc kmp*(str: string, aim: string): int =
  result = -1
  var
    i = 0 # 主串
    j = 0 # 模式串
    next = next(aim)
  while (i < str.len) and (j < aim.len): # 直到把主串循环完毕 或者 找到模式串
    if str[i] == aim[j]: # 挨个匹配字符
      i += 1
      j += 1
    elif next[j] == (-1): # 未成功 且 next目标为 -1 主串向后移动一格，模式串 从头开始 减少不必要的循环次数（与网上写法稍微不同）
      i += 1
      j = next[j] + 1
    else: # 未成功 且 next目标不为 -1 移动模式串到指定位置
      j = next[j]

  if j == aim.len: # 如果字符串长度 等于 j 的大小 说明匹配成功 返回 模式串在主串的 下标
    result = i - j
    
      
    