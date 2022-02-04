//
//  StudentInput.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 04/02/2022.
//

import SwiftUI

struct StudentInput: View {
    
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
                Picker("Enjoymment: ", selection: $commentCard.enjoyment) {
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
        StudentInput()
    }
}
