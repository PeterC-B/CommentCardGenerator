//
//  StudentInput.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 04/02/2022.
//

import SwiftUI

struct GenerateCommentCardView: View {
    @EnvironmentObject var state: StudentStateController
    @State var commentCard: CommentCard = CommentCard()
    @State var generatedComment: String = ""


    private let choices = [0, 1, 2, 3, 4, 5]
    var body: some View {
        NavigationView {
            VStack{
                TextField("Division Code:", text: $commentCard.code)
                TextField("Subject:", text: $commentCard.subject)
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
                
                if generatedComment != "" {
                    Text(generatedComment)
                }
                
                Button("Generate Comment") {
                    let result = commentCard.generateCommentCard()
                    print(result)
                    generatedComment = result
                    state.student.divisions.append(Division(code: commentCard.code, subject: commentCard.subject, commentCard: result))
                }
                
            }
            .navigationTitle("Generate Comment Card")
                
        }
    }
}

struct StudentInput_Previews: PreviewProvider {
    static var previews: some View {
        GenerateCommentCardView()
    }
}
