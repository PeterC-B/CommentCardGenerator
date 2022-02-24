//
//  CommentCard.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 02/02/2022.
//

import Foundation

class CommentCard: ObservableObject {
    @Published var text: String = "Comment Card will be generated here..."
    var difficulty: Int = 0
    var enjoyment: Int = 0
    var effort: Int = 0
    var subject: String = "Computer Science"
    
    /*
    init(subject: String) {
        self.subject = subject
        
    }
     */
    
    func generateCommentCard() {
        text = ""
        if enjoyment > 2{
            text = text + "I have really enjoyed " + subject + " so far this half."
        }
        else {
            text = text + "I have not enjoyed " + subject + " so far this half."
        }
        if effort > 2 {
            text = text + "I think I have worked hard with an effort of \(effort)/5."
        }
        else {
            text = text + "I haven't worked particularly hard with an effort of \(effort)/5."
        }
        if enjoyment > 2 {
            text = text + "The pace of the work is good and I think I learn really well from the teacher. My Enjoyment is \(enjoyment)/5 and the difficulty is \(difficulty)."
            
        }
        else {
            text = text + "The pace of the work is quite fast and I think its been really challenging so far. My Enjoyment is \(enjoyment)/5 and the difficulty is \(difficulty)."
        }

        
        
    }
        
        
        
    
    
}
