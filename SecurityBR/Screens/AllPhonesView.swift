//
//  AllPhonesView.swift
//  SecurityBR
//
//  Created by Carlos Amaral on 24/01/22.
//

import SwiftUI

struct AllPhonesView: View {
    @State private var searchText : String = ""
    @State private var phones : [Phone] = PhonesData
    @State private var category : [String] = []
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(phones) { p in
                            TelephoneTemplateComponent(number: p.phone, name: p.name)
                                .padding(.vertical, 5)
                        }
                    }
                    .searchable(text: $searchText)
                    .listStyle(.inset)
                }
            }
            .navigationTitle("Serviço Nacional")
        }
    }
}

struct AllPhonesView_Previews: PreviewProvider {
    static var previews: some View {
        AllPhonesView()
    }
}
