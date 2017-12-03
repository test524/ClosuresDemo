
import UIKit


let numbers = [1,2,3,4,5]


//MAP 
//1
let sum = numbers.map { (value) -> Int in
    let  result = value + 9
    return result
}

//2
let sum56 = numbers.map{(value) in
    return value+9
}

//3
let result = numbers.map({number in number * 9})

//4 
let arrayResult = numbers.map({$0+9})

//5
let arrayRe = numbers.map{$0+9}

//Filter 
//1
let filterResult = numbers.filter { (value) -> Bool in
    return value % 2 == 0
}

//2
let fr2 = numbers.filter{$0 % 2 == 0}
fr2

//Reduce 
let sum2 = numbers.reduce(0, {$0+$1})
let name = ["A","B","C"]
let combineName = name.reduce("", +)
let combineNameExp2 = name.reduce("", {$0 + $1})
combineNameExp2
combineName

//Flatmap
let  arrayInArray  = [[12,22,23],[34,55,33]]
let  joinedArray = arrayInArray.flatMap { $0 }
joinedArray

//FlatMap + filter
let result3 =  arrayInArray.flatMap{$0}.filter{$0 % 2 == 0}
result3

//Flatmap + filter + map (Total 3 functions)
let tf = arrayInArray.flatMap{ $0}.filter{ $0 % 2 == 0}.map{$0 * 5}
tf

let btn = UIButton.init(type: .custom)
btn.setTitle("test", for: .normal)

if let opt = btn.currentTitle
{
    print(opt)
}








