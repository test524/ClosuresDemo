//: Playground - noun: a place where people can play

import UIKit

//1
let  closuresExp1:()->() =  {
print("Hello")
}
closuresExp1

//2
let closureExp2:(String) -> (String) = { name -> String in
    return  "hi" +  name
}
closureExp2("Pavan")

//3
let closureExp3:(Float) -> (Int) = { value -> Int in
    let obj = Int(value)
    return  obj
}
closureExp3(7.9)

//4
let closureExp4 = { (value6 , value77) -> Int in
  return value6 + value77
}

closureExp4(2,4)

//5
let closureExp5:(Int , Int) -> (v1: Int , v2:Int) = { (value27,value34) -> (Int , Int) in
  return (value27 , value34)
}
closureExp5(8, 9).v1
closureExp5(8, 9).v2
closureExp5(8, 9)

//6
let closureExp6:([Int]) -> (even:[Int] ,odd: [Int]) = { numbers -> ([Int] , [Int]) in
    
    var evenNumbersArray = [Int]()
    var oddNumbersArray = [Int]()
    
    for number in numbers
    {
    number % 2 == 0 ? evenNumbersArray.append(number):oddNumbersArray.append(number)
    }
    return(evenNumbersArray , oddNumbersArray)
}
closureExp6([1,0,10])

//Compact version
let closures7 = {(value1: Int , value2: Int) -> Int in
    return value1
}

closures7(5,8)


let view:UIView =  {
    let val  = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    val.backgroundColor = UIColor.red
    val.layer.borderColor = UIColor.blue.cgColor
    val.layer.borderWidth = 5
    return val
}()

view

var hgb:Int  = {
    return 76
}()

let intReturn =  {(value1:Int , value2) -> Int in
    return value1+value2
}

intReturn(2,3)

func completionTest(name:String , completion:(_ resulet:Dictionary<String,Any>)->Void)
{
    completion(["key":1])
}

completionTest(name: "test") { (name) in
    print(name)
}









