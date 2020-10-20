#Module: tProcMethod.nim
type Animal* = ref object of RootObj
  name*: string
  age*: int
  
proc SelfIntroduce*(this: Animal): void = echo ("my name is animal")
method vocalize*(this: Animal): string = "..."
method ageHumanYrs*(this: Animal): int = this.age

type Dog* = ref object of Animal
proc SelfIntroduce*(this: Dog): void = echo ("my name is ",this.name)
method vocalize*(this: Dog): string = "woof"
method ageHumanYrs*(this: Dog): int = this.age * 7

type Cat* = ref object of Animal
proc SelfIntroduce*(this: Cat): void = echo ("my name is ",this.name)
method vocalize*(this: Cat): string = "meow"