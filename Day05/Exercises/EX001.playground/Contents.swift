class Calculator {
    var value1: Double
    var value2: Double
    
    init(num1: Double, num2: Double) {
        value1 = num1
        value2 = num2
    }
    
    func sum() -> String{
        return "the sum \(value1) + \(value2) is \(value1 + value2)"
    }
    
    func subtract() -> String {
        return "the sum \(value1) - \(value2) is \(value1 - value2)"
    }
    
    func multiply() -> String {
        return "the multiplication \(value1) * \(value2) is \(value1 * value2)"
    }
    
    func division() -> String {
        return "the division \(value1) / \(value2) is \(value1 / value2)"
    }
}


let calc = Calculator(num1: 10, num2: 5)
print(calc.sum())
print(calc.subtract())
print(calc.multiply())
print(calc.division())

