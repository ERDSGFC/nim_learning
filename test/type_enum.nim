type
    Direction = enum
        north, east, south, west
var a = north

echo a
echo typeof(a)
echo a.ord
echo $a
inc(a)
echo a
if a == Direction.north:
    echo "北方"
else:
    echo "其他"

case a
of north:
    echo "north"
of east:
    echo "east"
of south:
    echo "south"
of west:
    echo "west"
type
  MySubrange = range[0..5]
var
    c: MySubrange = 2
echo succ(d)