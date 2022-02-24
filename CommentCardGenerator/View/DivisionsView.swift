//
//  ContentView.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 02/02/2022.
//

import SwiftUI

struct DivisionsView: View {
    @EnvironmentObject var state: StudentStateController
    var body: some View {
        NavigationView {
            VStack{
                 List(state.student.divisions, id: \.self.code){ division in
                    NavigationLink(destination: GenerateCommentCardView(commentCard: division.commentCard)) {
                        Text(division.code)
                        
                    }
                }

               
            }
            .navigationTitle("Divisions View")
                
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DivisionsView()
    }
}
