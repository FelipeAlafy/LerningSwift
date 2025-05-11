func prime(number: Int) -> Bool {
    if number == 2 || number == 3 { return true }
    for i in 3 ..< number {
        print("\(i) % \(number) == \(number % i)")
        if number % i == 0 {
            print("\(i) % \(number) == 0")
            return false
        }
    }
    return true
}

let number  = 9
let number2 = 2
let number3 = 7

print("Is \(number) prime? \(prime(number: number))")
print("Is \(number2) prime? \(prime(number: number2))")
print("Is \(number3) prime? \(prime(number: number3))")
