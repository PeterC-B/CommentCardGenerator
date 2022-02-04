//
//  RootTabView.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 04/02/2022.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text("Divisions View")
                }
            StudentInput()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text ("Generate Comment Card")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
