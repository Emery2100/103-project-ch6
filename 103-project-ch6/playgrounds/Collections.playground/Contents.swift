import UIKit

// Array
print("---ARRAY---")
print("""
    These are the characteristics of an Array:
    1. It is ordered.
    2. Supports duplicated items.
    3. Each item has a position (index).
    """)

// Define an Array
var studentsList: [String] = []
var gradesArray: [Int] = [100, 90, 80, 70]

// print the array in the console
print("This is an array: \(gradesArray)")


// SET
print("\n---SET---")
print("""
    These are the characteristics of a Set:
    1. It is an unordered collection
    2. Items don't have position
    3. Uniques
    """)

//Defining a set
var names = Set<String>()
var gradeSet: Set<Int> = [100, 90, 80, 70]

//print the set in the console

print("This is a set: \(gradeSet)")

print("\n ---DICTIONARY---")
print("""
    These are the characteristics of a Dictionary:
    1. Unordered.
    2. Collection of key-value pairs.
    3. The key must be unique.
    """)

// Defining a dictionary
var emptyDictionary: [String:Int] = [:]
var gradesDictionary: [String:[Int]] = [
    "Fernanda":[60,80,100],
    "Naqui":[100,80,90]
]

// Print the dictionary in the console
print("This is a dictionary: \(gradesDictionary)")

// Mini challenge

var studentName: [String] = ["Fernanda", "Naqui", "Kiko","David","Xander"]

print("This is a list of students: \(studentName)")

var studentIdSet: Set<String> = ["123", "456", "789"]

print("This is a list of IDs: \(studentIdSet)")

var studentGradesDic: [String: Int] = ["Fernanda": 80, "Naqui": 90, "Kiko": 70, "David": 60, "Xander": 100]

print("This is a list of grades: \(studentGradesDic)")

var courseOffered: [String] = ["Math", "History", "Science"]

print("This is a list of courses: \(courseOffered)")
