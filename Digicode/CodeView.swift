//
//  CodeView.swift
//  Digicode
//
//  Created by Les Prodiges on 31/03/2023.
//

import SwiftUI
import Firebase

struct CodeView: View {
    let code: Code
    
    var body: some View {
        Text("\(code.name)")
    }
}

struct CodeView_Previews: PreviewProvider {
    static var previews: some View {
        let code = Code(
            code: "B6723",
            name: "Tokyo",
            location: GeoPoint(latitude:36.6875 , longitude:139.7564 )
        )
        CodeView(code: code)
    }
}
