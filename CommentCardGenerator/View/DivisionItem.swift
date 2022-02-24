//
//  DivisionItem.swift
//  CommentCardGenerator
//
//  Created by Compton-Burnett, Peter (PGW) on 09/02/2022.
//

import SwiftUI

struct DivisionItem: View {
    let division: Division
    
    var body: some View {
        HStack{
            Image(systemName: "1.circle")
            Text("\(division.code)")
        }
    }
}

struct DivisionItem_Previews: PreviewProvider {
    static var previews: some View {
        DivisionItem(division: Division(code: "vBY-1", subject: "Specialist Subject"))
    }
}

