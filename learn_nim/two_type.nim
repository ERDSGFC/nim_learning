var
    a = "我的好不平凡的"
    b = "abcdefj"
echo a[1..^1]
b[1..^2] = "aaa"
echo b
#对象
type
    Pers = object
        name: string
        age: int
        id: string
var pers1 = Pers(name: "xiao", age: 12)
echo pers1.name
var pers2 = pers1
echo pers2.age
#元组
type
    Company = tuple
        name: string
        address: string
        money: float32

    CompanyX = tuple[name: string, address: string, money: float32]
    CompanyT = (string, string, float32)
var
    companyT: CompanyT = (name: "培迪科技", address: "重庆南岸",
            money: 50000'f32)
    companyX: CompanyX = (name: "培迪科技q", address: "重庆南岸q",
            money: 50000'f32)
    company: Company = companyT
echo companyT[0]
echo companyX[0], ' ', companyX.name
echo company.name
