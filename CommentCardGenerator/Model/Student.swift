//
//  Student.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 04/02/2022.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let house: String
    let trialsNumber: Int
    let divisions: [Division]
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
        
    }
    
    #if DEBUG
    static let example = Student(forename: "Test", surname: "User", birthday: Date())
    static let examples = [example]
    #endif
}
