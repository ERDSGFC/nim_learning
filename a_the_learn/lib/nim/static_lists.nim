type
  StaticList* [T] = object
    value: T
    cur {.cursor.}: int

# proc init_lists* [T](len: int): Lists[T] =
  # static_list = newSeq(len)

proc init_lists* [T](lists: var openArray[T]) =
  
  for i in 0..<(lists.len-1):
    lists[i].cur = i + 1
  
  # result = lists[0].cur
    
    

# init_lists([1,2])
# var
#   list: array[10,StaticList[int]]