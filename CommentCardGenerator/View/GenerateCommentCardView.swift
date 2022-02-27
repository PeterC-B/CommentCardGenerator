//
//  StudentInput.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 04/02/2022.
//

import SwiftUI

struct GenerateCommentCardView: View {
    @EnvironmentObject var state: StudentStateController
    @State var commentCard: CommentCard
    @State var generated: Bool = false
    
    init(code: String, subject: String) {
        self.commentCard = CommentCard(code: code, subject: subject)
    }
    private let choices = [0, 1, 2, 3, 4, 5]
    var body: some View {
        NavigationView {
            VStack{
                Text("Difficulty:")
                Picker("Difficulty: ", selection: $commentCard.difficulty) {
                    ForEach(choices, id: \.self) {
                        Text(String($0))
                    }
                }
                Text("Enjoyment:")
                Picker("Enjoyment: ", selection: $commentCard.enjoyment) {
                    ForEach(choices, id: \.self) {
                        Text(String($0))
                    }
                }
                Text("Effort:")
                Picker("Effort: ", selection: $commentCard.effort) {
                    ForEach(choices, id: \.self) {
                        Text(String($0))
                    }
                }
                Spacer()
                Text(commentCard)
                Spacer()
                
                Button("Generate Comment") {
                    commentCard.generateCommentCard()
                }
            }
            .navigationTitle("Generate Comment Card")
                
        }
    }
}

struct StudentInput_Previews: PreviewProvider {
    static var previews: some View {
        GenerateCommentCardView(code: "vB3-1", subject: "Computer Science")
    }
}
