class Employee {
    var name: String
    var salary: Double {
        didSet {
            if oldValue > salary {
                print("Operation not allowed.")
                salary = oldValue
            }
        }
        
        willSet {
            if newValue > salary {
                print("You have reviced a promotion.")
                print("Your salary is now \(newValue)")
            }
            if newValue == salary {
                print("It seems that this time you have not get a promotion, sorry.")
            }
        }
    }
    
    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary
    }
}


let felipe = Employee(name: "Felipe Alafy", salary: 2000.0)
felipe.salary = 1000.0
print(felipe.salary)
felipe.salary = 3000
felipe.salary = 3000
