import po
var animals : Animal
animals = Dog(name: "Sparky", age: 10)
echo animals.name
echo animals.age
echo animals.vocalize()                 #method方法调用。是通过 实例对象引用.方法名
echo animals.ageHumanYrs()
po.SelfIntroduce(animals)

# animals = Cat(name: "Mitten", age: 10)
# echo animals.vocalize()
# echo animals.ageHumanYrs()
# tProcMethod.SelfIntroduce(animals)