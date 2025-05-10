// In swift there are many ways to declare an interval, for example the sample below create a interval that starts in 10 and ends in 20 (this value is included, for this reason this type of interval are called as ClosedInterval).
var ClosedInterval = 10...20

// As well, there is an Semi Open Interval in swift, that not includes the end value in it. See below:
var SemiOpenInterval = 0..<10

//If in some circustance you will need to use many if and else if, you must be able to replace it with a switch case expression, that are made just for that cases.

var number = -1

switch number {
case ClosedInterval:
    print("the value is between 10 and 20")
case SemiOpenInterval:
    print("the value is between 0 and 10")
default:
    print("The value is bigger than 20 or less than 0")
}

//Each switch must have a default clause, because it need to respond in case of something unexpected.

//Another example of switch case

var animal = "tiger"

switch animal {
case "dog", "cat":
    print("pet.")
default:
    print("wild animal.")
}

// In swift there is a way to declare temporary variables in switch cases statements, after a case, put let variableName where expression, the expression must be a bool return.
switch number {
case let x where x % 2 == 0:
    print("Number \(x) is even")
case let x where x % 2 == 1:
    print("Number \(x) is odd")
default:
    break
}

// How to create random numbers in swift
var randomicNumber = Int.random(in: 0...100)
print(randomicNumber)
