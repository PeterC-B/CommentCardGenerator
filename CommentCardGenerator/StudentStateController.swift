//
//  StudentStateController.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 09/02/2022.
//

import Foundation

class StudentStateController: ObservableObject {
    @Published var student: Student
    @Published var loggedIn: Bool = false
    
    init(student: Student) {
        self.student = student
        student.divisions.append(Division(code: "CCom1-3"))
        //print(student.divisions[0].commentCard.text)
    }
}
