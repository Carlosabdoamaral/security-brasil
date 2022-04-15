//
//  TelephoneTemplateComponent.swift
//  SecurityBR
//
//  Created by Carlos Amaral on 22/01/22.
//

import SwiftUI

struct TelephoneTemplateComponent: View {
    
    @State public var number : Int = 0
    @State public var name : String = "Corpo de bombeiros"
    
    var body: some View {
        ZStack {
            
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 5, height: 40)
                    .foregroundColor(.green)
                VStack(alignment: .leading) {
                    Text("\(number)")
                        .font(.title3)
                        .fontWeight(.bold)
                        .italic()
                    Text("\(name)")
                        .font(.footnote)
                        .lineLimit(1)
                        .foregroundColor(Color.gray)
                }
                
                Spacer()
                
//                Button {
//                    call(number: number)
//                } label: {
//                    Image(systemName: "phone.fill")
//                        .foregroundColor(.pink)
//                }
                
                Link("Ligar", destination: URL(string: "tel:\(number)")!)
                    .padding(.trailing, 20)
            }
        }
    }
}

struct TelephoneTemplateComponent_Previews: PreviewProvider {
    static var previews: some View {
        TelephoneTemplateComponent()
    }
}
