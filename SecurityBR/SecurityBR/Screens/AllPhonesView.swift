//
//  AllPhonesView.swift
//  SecurityBR
//
//  Created by Carlos Amaral on 24/01/22.
//

import SwiftUI

struct AllPhonesView: View {
    @State private var searchText : String = ""
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        Section(header: ListHeaderComponent(name: "Polícia")) {
                            ForEach(0..<5) { i in
                                TelephoneTemplateComponent(number: 190, name: "PRF")
                            }
                        }
                        
                        Section(header: ListHeaderComponent(name: "Polícia")) {
                            ForEach(0..<5) { i in
                                TelephoneTemplateComponent(number: 190, name: "PRF")
                            }
                        }
                        
                        Section(header: ListHeaderComponent(name: "Polícia")) {
                            ForEach(0..<5) { i in
                                TelephoneTemplateComponent(number: 190, name: "PRF")
                            }
                        }
                        
                        Section(header: ListHeaderComponent(name: "Polícia")) {
                            ForEach(0..<5) { i in
                                TelephoneTemplateComponent(number: 190, name: "PRF")
                            }
                        }
                    }
                    .searchable(text: $searchText)
                }
            }
            .navigationTitle("Todos contatos")
        }
    }
}

struct AllPhonesView_Previews: PreviewProvider {
    static var previews: some View {
        AllPhonesView()
    }
}
