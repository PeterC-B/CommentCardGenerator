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
            DivisionsView()
                .tabItem{
                    Image(systemName: "person.3")
                    Text("Divisions View")
                }
            LoginView()
                .tabItem{
                    Image(systemName: "person.circle.fill")
                    Text("Login")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
