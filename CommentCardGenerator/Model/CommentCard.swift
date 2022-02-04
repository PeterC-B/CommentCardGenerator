//
//  CommentCard.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 02/02/2022.
//

import Foundation

class CommentCard: ObservableObject {
    @Published var text: String = "Testing"
    var difficulty: Int = 0
    var enjoyment: Int = 0
    var effort: Int = 0
    
    func generateCommentCard() {
        text = """
        I have really enjoyed Spanish so far this half.
        I think I have worked hard with an effort of \(effort)/5.
        The pace of the work is good and I think I learn really well from the teacher.
        My Enjoyment is \(enjoyment)/5 and the difficulty is \(difficulty)
        """
    }
        
        
        
    
    
}
