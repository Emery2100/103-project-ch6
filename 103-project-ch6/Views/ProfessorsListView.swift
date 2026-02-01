//
//  ProfessorsListView.swift
//  103-project-ch6
//
//  Created by David Emery on 1/31/26.
//

import SwiftUI

struct ProfessorsListView: View {
    
    @State private var professorsList: [Professor] = [
        Professor(firstName: "David", lastName: "Emery", phoneNumber: "111-111-1111"),
        Professor(firstName: "John", lastName: "Snow", phoneNumber: "222-222-2222")
    ]
    
    // Text Field Variables
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var phoneNumber: String = ""
    
    var body: some View {
        Text(" 📚 Professor Directory")
            .font(.title)
            .bold()
        
        List(professorsList, id:\.phoneNumber) { professor in
            Text("\(professor.firstName) \(professor.lastName) - \(professor.phoneNumber)")
        }
        
        // Text Fields
        VStack(spacing: 20){
            TextField("First Name", text : $firstName)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            
            TextField("Last Name", text : $lastName)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            
            TextField("Phone Number", text : $phoneNumber)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
        }
        .padding()
        
        // Add Professor
        Button("Add Professor"){
            //1. Create the object
            let newProfessor = Professor(firstName: firstName, lastName: lastName, phoneNumber: phoneNumber)
            //2. Add the new object to the array
            professorsList.append(newProfessor)
            //3. Clear the Text Fields (UX)
            firstName = ""
            lastName = ""
            phoneNumber = ""
            
        }
        .buttonStyle(.borderedProminent)
        .bold()
    }
}

#Preview {
    ProfessorsListView()
}
