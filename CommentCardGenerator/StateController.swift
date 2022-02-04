//
//  StateController.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 04/02/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var student: Student
    
    init() {
        student = Student(forename: "Peter", surname: "Compton", house: "PGW", trialsNumber: 8105)
        student.divisions.append(Division(code: "CCom1-3"))
        print(student.divisions[0].commentCard.text)
    }
}
