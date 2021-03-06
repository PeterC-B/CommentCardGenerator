//
//  Student.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 04/02/2022.
//

import Foundation

class Student: ObservableObject {
    var forename: String
    var surname: String
    var house: String
    var trialsNumber: Int
    var divisions: [Division]
    
    init(forename: String, surname: String, house: String, trialsNumber: Int) {
        self.forename = forename
        self.surname = surname
        self.house = house
        self.trialsNumber = trialsNumber
        self.divisions = []
    }
}
