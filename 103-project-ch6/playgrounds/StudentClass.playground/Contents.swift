import UIKit

// Student class
class Student {
    var name: String
    var age: Int
    var grades: [Int]

    init(name: String, age: Int, grades: [Int]) {
        self.name = name
        self.age = age
        self.grades = grades
    }

    // calculate average grade
    func getAverage() -> Double {
        var total = 0

        for grade in grades {
            total += grade
        }

        return Double(total) / Double(grades.count)
    }

    // check if student is passing
    func isPassing() -> Bool {
        return getAverage() >= 60
    }
}

// create students
let student1 = Student(name: "David", age: 34, grades: [80, 85, 88])
let student2 = Student(name: "Xander", age: 22, grades: [90, 92, 93])
let student3 = Student(name: "Avarie", age: 25, grades: [88,52,78])
let student4 = Student(name: "Elena", age: 32, grades: [59,52,61])

// print student info
func printStudent(_ student: Student) {
    print("Student: \(student.name)")
    print("Average: \(String(format: "%.2f", student.getAverage()))")
    print("Status: \(student.isPassing() ? "Passing" : "Failing")")
    print("")
}

printStudent(student1)
printStudent(student2)
printStudent(student3)
printStudent(student4)

// calculate course average
let courseAverage = (student1.getAverage() + student2.getAverage() + student3.getAverage() + student4.getAverage()) / 4
print("Course Average: \(String(format: "%.2f", courseAverage))")
