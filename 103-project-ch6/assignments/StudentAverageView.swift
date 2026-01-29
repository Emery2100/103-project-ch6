//
//  StudentAverageView.swift
//  103-project-ch6
//
//  Created by David Emery on 1/27/26.
//
import SwiftUI

struct StudentAverageView: View {
    
    @State private var students: [(name: String, grade: Double)] = [
        ("Alice", 84.33),
        ("Bob", 91.67),
        ("David", 99.99),
        ("Xander", 99.92),
        ("Avarie", 92.67)
    ]
    
    @State private var name: String = ""
    @State private var grade: String = ""
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color.gray.opacity(0.2)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Student Grades")
                        .font(.largeTitle)
                        .foregroundStyle(Color.blue)
                        .bold()
                    
                    Text(String(format: "Course Average: %.2f", courseAverage()))
                        .foregroundStyle(Color.gray)
                        .padding(.bottom)
                    
                    List {
                        ForEach(students, id: \.name) { student in
                            HStack {
                                Text(student.name)
                                Spacer()
                                Text(String(format: "%.2f", student.grade))
                            }
                        }
                    }
                    
                    HStack {
                        TextField("Student Name", text: $name)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                        
                        TextField("Grade", text: $grade)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                        
                        Button(action: {
                            if let gradeValue = Double(grade) {
                                students.append((name, gradeValue))
                                name = ""
                                grade = ""
                            }
                        }) {
                            Image(systemName: "plus")
                                .padding()
                                .background(Color.blue)
                                .foregroundStyle(Color.white)
                                .cornerRadius(30)
                        }
                    }
                    .padding()
                    
                } // END: VStack
                
            } // END: ZStack
            .navigationBarTitle("GradeBook", displayMode: .inline)
            .toolbar {
                
                Menu {
                    
                    Button("Sort A → Z") {
                        students.sort { $0.name < $1.name }
                    }
                    
                    Button("Sort by Grade") {
                        students.sort { $0.grade > $1.grade }
                    }
                    
                } label: {
                    Image(systemName: "arrow.up.arrow.down.circle")
                        .imageScale(.large)
                }
                
            } // END: Toolbar
            
        } // END: NavigationView
    }
    
    func courseAverage() -> Double {
        if students.isEmpty {
            return 0.0
        }
        
        let total = students.reduce(0) { $0 + $1.grade }
        return total / Double(students.count)
    }
}

#Preview {
    StudentAverageView()
}
