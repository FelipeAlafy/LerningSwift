class employee {
    var name: String
    var salary: Float
    
    init (employeeName: String, employeeSalary: Float) {
        self.name = employeeName
        self.salary = employeeSalary
    }
}

class manager : employee {
    var department: String
    init (managerName: String, managerSalary: Float, managerDepartment: String) {
        self.department = managerDepartment
        super.init(employeeName: managerName, employeeSalary: managerSalary)
    }
}

class seller : employee {
    func getComission(sales: Int, salePrincing: Float = 50.0) -> Float {
        return (Float(sales) * salePrincing)
    }
}


let denis = manager(managerName: "Denis Alexandre", managerSalary: 27340.50, managerDepartment: "SM - Sales and Marketing")

let felipe = seller(employeeName: "Felipe Alafy", employeeSalary: 3000.0)

print("Felipe's commission: R$ \(felipe.getComission(sales: 500)).")

func getEmployeeType(employee: employee) {
    if let managerEmployee = employee as? manager {
        print("The manager \(managerEmployee.name) work at the department of \(managerEmployee.department)")
        return
    }
    if let sellerEmployee = employee as? seller {
        print("\(sellerEmployee.name) work as a Seller.")
        return
    }
    
    print("This is \(employee.name) he/she is new at the company, department not defined yet.")
}

getEmployeeType(employee: denis)
getEmployeeType(employee: felipe)
