//Classes, are similar to structs, but this time method will not need the operator mutable behind the method declaration, creating variables work in the same way. Another marking point is about the init method, which have to be declared inside a class declaration in order to get some initial values and insert them into the variables.
class CurrentAccount {
    private var accountValue: Double
    private var name: String
    
    init(accountInitialValue: Double = 0.0, accountOwnerName: String) {
        self.accountValue = accountInitialValue
        self.name = accountOwnerName
    }
    
    func withDraw(_ value: Double) {
        self.accountValue -= value
    }
    
    func deposit(_ value: Double) {
        self.accountValue += value
    }
    
    func extract() {
        print("Extract of \(name) baking account is")
        print("------------------------------------")
        print("Current Cash Available: \(accountValue)")
        print("------------------------------------")
    }
}

//Classes can be invoked in the same way as a struct.
var felipesAccount = CurrentAccount(accountInitialValue: 100, accountOwnerName: "Felipe Alafy Rodrigues Silva")

//Method are accessible in the same way as the functions inside of a struct.
felipesAccount.deposit(100)
felipesAccount.extract()
felipesAccount.withDraw(50)
felipesAccount.extract()

//Anther point, between structs and classes are that classes are based on reference basis, so you can declare a const that revices a classes and you will keep been able to change its interns values with any problem, the same is not truth about structs.
let denniesAccount: CurrentAccount = .init(accountOwnerName: "Dennies Santana Queiroz")
denniesAccount.deposit(1000)
denniesAccount.extract()
denniesAccount.withDraw(10)
denniesAccount.extract()
