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
                    Button(division.code){
                        state.selectedDivision = division
                        print("Switched")
                    }
                }
                NavigationLink("View Comment Card for: \(state.selectedDivision.code)", destination: ViewCommentCard())
                Spacer()

               
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
