//
//  ContentView.swift
//  SecurityBR
//
//  Created by Carlos Amaral on 22/01/22.
//

import SwiftUI

struct Phone : Identifiable, Codable {
    var id = UUID()
    var phone : Int
    var name : String
}

struct ContentView: View {
    
    @State private var searchText : String = ""
    
    @State var numbers : [Phone] = []
    
    func appendNumbers() {
        let b1 : Phone = Phone(phone: 191, name: "Bombeiros")
        let b2 : Phone = Phone(phone: 192, name: "Defesa Cívil")
        let b3 : Phone = Phone(phone: 193, name: "Polícia")
        let b4 : Phone = Phone(phone: 194, name: "PRF")
        let b5 : Phone = Phone(phone: 195, name: "AAAA")
        
        numbers.append(b1)
        numbers.append(b2)
        numbers.append(b3)
        numbers.append(b4)
        numbers.append(b5)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
//                    TextField("Pesquisar...", text: $searchText)
//                        .frame(height: 35)
//                        .padding(.leading)
//                        .background(.gray.opacity(0.2))
//                        .cornerRadius(5)
//                        .padding()
                    List {
                        ForEach(numbers) { i in
                            TelephoneTemplateComponent(number: i.phone, name: i.name)
//                                .searchable(text: $numbers[0].name)
                        }
                    }
                }
            }
            .navigationTitle("SecurityBR")
            .navigationBarItems(
                trailing:
                    Image(systemName: "info.circle")
            )
        }
        .onAppear(perform: appendNumbers)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
