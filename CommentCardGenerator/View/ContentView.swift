//
//  ContentView.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 02/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = "Edit here..."
    @ObservedObject var commentCard = CommentCard()
    private let choices = [0, 1, 2, 3, 4, 5]
    var body: some View {
        NavigationView {
            VStack{
                TextEditor(text: $commentCard.text)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
                    .frame(height: 300, alignment: .center)
                    .border(Color.blue, width: 1.0)
                Button("Button title") {
                    commentCard.generateCommentCard()
                }
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
            }
            .navigationTitle("Generate Comment Card")
                
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
