//
//  LoginView.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 09/02/2022.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var state: LoginStateController
    @ObservedObject var student = Student(forename: "", surname: "", house: "", trialsNumber: 0)
    @State var loggedIn: Bool = false

    var body: some View {
        NavigationView {
            if (loggedIn == false) {
                Form {
                    TextField("First Name", text: $student.forename)
                    TextField("Surname", text: $student.surname)
                    TextField("House", text: $student.house)
                    TextField("Trials Number", value: $student.trialsNumber, format: .number)
                    
                    Button("Login") {
                        print("Logged in " + student.forename)
                        loggedIn = true
                        
                    }
                }
            }
            else {
                NavigationLink(destination: RootTabView()
                                .environmentObject(StudentStateController(student: student))) {
                                    Text("Go To Divisions page please click")
                                }
                 
                
            }
            
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
