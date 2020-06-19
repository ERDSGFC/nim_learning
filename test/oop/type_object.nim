type
  Person* = ref object of RootObj
    name*: string
    age : int
  Student = ref object of Person
    id* : int

proc `age =`* (person: var Person, age: int) {.inline.} =
  person.age = age

proc age* (person: Person): int {.inline.} =
  person.age