var age = 18

if age >= 18 {
    print("Able to learn how to drive.")
} else {
    print("Not able yet to learn how to drive.")
}

var hasValidCNH = true

if age >= 18 && hasValidCNH == true {
    // hasValidCNH == true must be simplified to hasValidCNH only.
    print("Able to drive.")
} else {
    print("Not able to drive.")
}

var num1 = 5
var num2 = 5

if num1 > num2 {
    print("\(num1) > \(num2)")
} else if num1 < num2 {
    print("\(num1) < \(num2)")
} else {
    print("\(num1) = \(num2)")
}


//Ternary Operator
var expression = age > 17
//Ternary Operator works as an if and else simplified expression, first put and logic expression then ? what you would like to happen if true, then : and what would not like to happen.
expression ? print("In Majority Age") : print("Not in Majority Age yet, \(18 - age) years left to it.")
