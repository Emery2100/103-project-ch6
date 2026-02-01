import UIKit
class Student{
    var name:String
    var grade:Int
    
    init(name: String, grade: Int) {
        self.name = name
        self.grade = grade
    }
}

//Create Object
let student1 = Student(name: "David", grade: 100)

//Access the Values (.)
print(student1.name)
print(student1.grade)

class studentEncapsulated{
    var name:String
    
    private var grade: Int // Hidden
    
    init(name: String, grade: Int) {
        self.name = name
        self.grade = grade
    }
    
    // Controlled access
    func getGrade() -> Int {
        return grade
    }
}

//Create

let student2 = studentEncapsulated(name: "David", grade: 90)

// acces the values
print(student2.name)
// print(student2.grade) //not allowed
print(student2.getGrade())


