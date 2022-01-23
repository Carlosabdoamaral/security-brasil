//
//  TelephoneTemplateComponent.swift
//  SecurityBR
//
//  Created by Carlos Amaral on 22/01/22.
//

import SwiftUI

struct TelephoneTemplateComponent: View {
    
    @State public var number : Int = 0
    @State public var name : String = ""
    
    var body: some View {
        ZStack {
            
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 5, height: 40)
                    .foregroundColor(.pink)
                VStack(alignment: .leading) {
                    Text("\(number)")
                        .font(.title3)
                        .fontWeight(.bold)
                        .italic()
                    Text("\(name)")
                        .font(.footnote)
                        .lineLimit(1)
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "phone.fill")
                        .foregroundColor(.pink)
                }
            }
        }
    }
}

struct TelephoneTemplateComponent_Previews: PreviewProvider {
    static var previews: some View {
        TelephoneTemplateComponent()
    }
}
