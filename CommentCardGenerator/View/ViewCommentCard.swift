//
//  ViewCommentCard.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 27/02/2022.
//

import SwiftUI

struct ViewCommentCard: View {
    @EnvironmentObject var state: StudentStateController
    
    var body: some View {
        Text(state.selectedDivision.code)
        Text(state.selectedDivision.subject)
        if state.selectedDivision.commentCard == "" {
            Text("No Comment card")
        }
        else {
            Text(state.selectedDivision.commentCard)
        }
        
    }
}

struct ViewCommentCard_Previews: PreviewProvider {
    static var previews: some View {
        ViewCommentCard()
    }
}
