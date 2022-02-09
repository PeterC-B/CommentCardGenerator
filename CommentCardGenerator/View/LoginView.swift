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

    var body: some View {
        NavigationView {
            Form {
                TextField("First Name", text: $student.forename)
                TextField("Surname", text: $student.surname)
                TextField("House", text: $student.house)
                TextField("Trials Number", value: $student.trialsNumber, format: .number)
                
                Button("Login") {
                    state.student = student
                    print("Logged In")
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
