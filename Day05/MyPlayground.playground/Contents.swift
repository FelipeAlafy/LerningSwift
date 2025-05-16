struct CurrentBankingAccount {
    var cash = 0.0
    var name: String
    
    mutating func getCash(_ value: Double) {
        cash -= value
    }
    
    mutating func addCash(_ value: Double) {
        cash += value
    }
}

var currentAccountFelipe = CurrentBankingAccount(name: "Felipe Alafy")
print(currentAccountFelipe.cash)
currentAccountFelipe.addCash(1000.20)
print(currentAccountFelipe.cash)
currentAccountFelipe.getCash(200.20)
print("This current account is owned by \(currentAccountFelipe.name)")
