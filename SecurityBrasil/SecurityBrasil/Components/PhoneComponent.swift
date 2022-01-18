//
//  PhoneComponent.swift
//  SecurityBrasil
//
//  Created by Carlos Amaral on 17/01/22.
//

import SwiftUI

struct PhoneComponent: View {
    
    @State private var phone : PhoneModel = PhoneModel(id: 1, tel: 180, companyName: "Violencia Contra Mulher", distancy: 150)
    
    var body: some View {
        ZStack {
            Color.accentColor
            
            HStack {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 9)
                    .foregroundColor(.yellow)
                VStack(alignment: .leading) {
                    Text("\(phone.tel)")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("\(phone.distancy)km")
                    
                    Button {
                        print("ligar")
                    } label: {
                        Text("Ligar")
                            .foregroundColor(.yellow)
                    }
                    .padding(.top)
                }
                Spacer()
            }
            .padding()
            .foregroundColor(.white)
        }
        .cornerRadius(10)
        .frame(height: 150)
    }
}

struct PhoneComponent_Previews: PreviewProvider {
    static var previews: some View {
        PhoneComponent()
    }
}
