//
//  StudentStateController.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 09/02/2022.
//

import Foundation

class StudentStateController: ObservableObject {
    @Published var student: Student
    @Published var selectedDivision: Division
    
    init(student: Student) {
        self.student = student
        student.divisions.append(Division(code: "CCom1-3", subject: "Computer Science"))
        student.divisions.append(Division(code: "CPhyz-1", subject: "Physics"))
        student.divisions.append(Division(code: "De4-2", subject: "Design"))
        student.divisions.append(Division(code: "Ch3-1", subject: "Chemistry"))
        student.divisions.append(Division(code: "Ge1-3", subject: "Geography"))
        //print(student.divisions[0].commentCard.text)
        selectedDivision = student.divisions[0]
    }
}
