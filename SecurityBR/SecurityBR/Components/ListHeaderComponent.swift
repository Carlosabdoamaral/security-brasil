//
//  ListHeaderComponent.swift
//  SecurityBR
//
//  Created by Carlos Amaral on 24/01/22.
//

import SwiftUI

struct ListHeaderComponent: View {
    var name : String = ""
    
    var body: some View {
        Text("\(name)")
            .font(.body)
            .fontWeight(.light)
    }
}

struct ListHeaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderComponent()
    }
}
