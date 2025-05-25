//To use inheritance a father class must be created, like in the example below.
class BakingAccount {
    // Properties observers, are a way to monitor the changes that are made in real time to your variable.
    var bakingBalance: Double = 0.0 {
        //WillSet get the future value that is been set to the variable.
        willSet {
            print("Your bakingBalance is been set to \(newValue).")
        }
        //DidSet get the current value before been changed to the new value.
        didSet {
            print("Your bakingBalace was \(oldValue).")
        }
        
        //in both cases you may add a (nameToNewValue) or (nameToOldValue). And then, you can use new the defined name.
    }
    var accountOwner: String
    var accountOwnerAge: Int = 18
    //Static const are a constants that is not accessible through an instance nor through self, but its accessible through ClassName.StaticVariableName, notice that it not include () after the class name.
    static let transferTax = 0.1
    
    init(accountOwner: String, accountOwnerAge: Int) {
        self.accountOwner = accountOwner
        if accountOwnerAge < 18 {
            print("Although you can open a Baking Account at \(accountOwnerAge), you should be considering to open a Saving Account.")
        }
        self.accountOwnerAge = accountOwnerAge

    }
    
    func withdraw(_ value: Double) {
        bakingBalance -= value
    }
    
    func deposit(_ value: Double) {
        bakingBalance += value
    }
    
    func getStatement() {
        print("Current balance is R$ \(bakingBalance).")
    }
}

//To use inheritance just put : after your son class name, and put the name of the father class.
//This allow your son class to access, the father's methods and variables.
final class savingsAccount: BakingAccount {
    override func getStatement() {
        if (self.bakingBalance == 0.0) {
            print("Do not wait, start saving your money and make your plans a reallity.")
            return
        }
        print("You have saved R$ \(bakingBalance). You are now closer to your plans!")
    }
}

var hana = savingsAccount(accountOwner: "Hana Montana", accountOwnerAge: 17)
hana.deposit(100)
hana.getStatement()


//Writting the word final before a class, tells to swift that this class can not be a father class to another class.
final class currentAccount : BakingAccount {
    var creditCardOriginalLimit: Double = 1000 {
        willSet(newLimit) {
            print("Your limit has been updated, now it is \(newLimit).")
        }
    }
    var creditCardLimit: Double = 0.0
    var point: Int = 200
    // Creating, a computed variable, basicly it changes its value according to any change at bakingBalance.
    var overdrawnAccount: Bool {
        return self.bakingBalance < 0
    }
    
    init(accountOwner: String, accountOwnerAge:Int, creditCardLimit: Double) {
        //The super, is the way that we use inside a son class to access variables or method from a father's class or otherwise known as SUPERclass.
        super.init(accountOwner: accountOwner, accountOwnerAge: accountOwnerAge)
        self.creditCardLimit = self.creditCardOriginalLimit
    }
    
    func transferTo(account: BakingAccount, value: Double) {
        //Note that to access a static variable you must do BakingAccount.transferTax
        let valueLessTaxes = value - (value * BakingAccount.transferTax)
        account.deposit(valueLessTaxes)
        self.withdraw(value)
    }
    
    func useCreditCardLimit(_ value: Double) {
        if value < creditCardLimit {
            creditCardLimit -= value
            print("Credit card used, you have now a limit of \(creditCardLimit)")
            return
        }
        print("Unfortunately you do not have limit to pursache this item, please consider buying more, in order to get more score achieve get a higher limit in your credit card.")
    }
    
    func payCreditCardLimit(_ value: Double) {
        
        if value > self.bakingBalance {
            print("Not able to pay a value bigger than you have in your baking balance.")
            return
        }
        
        if value <= 0 {
            print("Please insert some value to pay.")
            return
        }
        
        if self.creditCardLimit == self.creditCardOriginalLimit {
            print("Not in debit!")
            return
        }
        var creditCardUsedValue = (self.creditCardOriginalLimit - self.creditCardLimit)
        if creditCardUsedValue < value {
            var returned = value - creditCardUsedValue
            self.bakingBalance -= value
            self.bakingBalance += returned
            print("You have payed, all of your current limit, it is now available to use, and also this amount R$ \(returned) have returned to your account.")
            self.creditCardLimit = self.creditCardOriginalLimit
        } else {
            self.bakingBalance -= creditCardUsedValue
            print("You have payed, all of your current limit, it is now available to use.")
            self.creditCardLimit = self.creditCardOriginalLimit
        }
        self.point += 100
        self.getNewScore()
    }
    
    func getNewScore() {
        if point % 200 == 0 && point != 200 {
            creditCardOriginalLimit += 1000
            creditCardLimit += 1000
            print("Congratulations, now you have recived R$ 1000,00 in your credit card limit.")
        }
    }
    //the override tells to swift that we are recreating the method, that already exists in a father's class.
    override func getStatement() {
        print("--------------------------------- STATEMENT ---------------------------------")
        super.getStatement()
        print("Credit Card free limit value: R$ \(self.creditCardLimit).")
        print("Original credit card limit: R$ \(self.creditCardOriginalLimit).")
        print("Credit Card Used value: R$ \(self.creditCardOriginalLimit - self.creditCardLimit).")
        print("-----------------------------------------------------------------------------")
    }
    
    func getStatement(investorsStatement: Bool) {
        print("--------------------------------- STATEMENT ---------------------------------")
        print("This is the renting from your investments at this month.")
        print("-----------------------------------------------------------------------------")
    }
}

func getType(_ account: BakingAccount) {
    print(type(of: account))
}

func getNewScore(_ account: BakingAccount) {
    guard let currentAccount = account as? currentAccount else {
        print("This is not a current account, not able to ask for more score.")
        print("Consider creating a current account to make this type of operation.")
        return
    }
    currentAccount.getNewScore()
}

let felipe = currentAccount(accountOwner: "Felipe Alafy", accountOwnerAge: 19, creditCardLimit: 1000.0)
felipe.useCreditCardLimit(473.0)
felipe.useCreditCardLimit(200.0)
felipe.payCreditCardLimit(673.0)
felipe.deposit(20000)
felipe.useCreditCardLimit(200.0)
felipe.payCreditCardLimit(673.0)
felipe.useCreditCardLimit(200.0)
felipe.payCreditCardLimit(673.0)
felipe.useCreditCardLimit(200.0)
felipe.payCreditCardLimit(673.0)
felipe.getStatement()
felipe.payCreditCardLimit(674.0)
felipe.getStatement()
felipe.getStatement(investorsStatement: true)
getType(felipe)
getType(hana)
getNewScore(hana)
getNewScore(felipe)

//Testing if an account is overdrawn
let alex = currentAccount(accountOwner: "Alex Van Der Lin", accountOwnerAge: 18, creditCardLimit: 0)
alex.withdraw(200)
print("\(alex.accountOwner)'s Account is overdrawn?")
print(alex.overdrawnAccount)
alex.deposit(1000)
print("\(alex.accountOwner)'s Account is overdrawn?")
print(alex.overdrawnAccount)
print(felipe.getStatement())
alex.transferTo(account: felipe, value: 400)
print(felipe.getStatement())
