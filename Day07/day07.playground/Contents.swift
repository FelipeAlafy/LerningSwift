
//Extensions, allow us to complement a already created class or struct, like in the example below. This class or struct might be yours or not.
extension String {
    func getStringLength() -> Int {
        var c = 0
        for i in self {
            c += 1
        }
        return c
    }
}

//See the example
let text = "Felipe Alafy"
print(text.getStringLength())

//Enums, are a way to create your own data type, with meaningful names
enum PaymentType {
    case instant
    case slip
    case bakingBalanceDebit
}


//Protocols, are like interfaces in other programming languages
protocol bakingAccount {
    var bakingBalance: Double { get set }
    
    func withdraw(_ value: Double)
    
    func deposit(_ value: Double)
    
    func getBankStatement()
}

class currentAccount: bakingAccount {
    var bakingBalance: Double = 0.0
    
    func getBankStatement() {
        print(self.bakingBalance)
    }
    
    func withdraw(_ value: Double) {
        self.bakingBalance -= value
    }
    
    func deposit(_ value: Double) {
        self.bakingBalance += value
    }
    
    func payCreditCard(paymentType: PaymentType) {
        switch paymentType {
        case .instant:
            print("Debit payed with instant method.")
        case .slip:
            print("Debit payed with instant method.")
        case .bakingBalanceDebit:
            print("Debit payed with instant method.")
        }
    }
}

let felipe: currentAccount = .init()
felipe.payCreditCard(paymentType: .instant)

//Raw Values, are the way that we associate another type, like yours values and an Integer for example, see the text below:
enum month: Int {
    case January = 1, February = 2, March = 3, April = 4, May = 5, June = 6, July = 7, August = 8, September = 9, Octuber = 10, november = 11, december = 12
}

var november: month = .november
print("\(november)'s number is \(november.rawValue)")
