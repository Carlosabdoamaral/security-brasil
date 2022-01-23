//
//  ContentView.swift
//  SecurityBR
//
//  Created by Carlos Amaral on 22/01/22.
//

import SwiftUI

struct Phone : Identifiable, Codable {
    var id = UUID()
    var i : Int
    var phone : Int
    var name : String
}

struct ContentView: View {
    
    @State private var searchText : String = ""
    
    @State var numbers : [Phone] = []
    
    func appendNumbers() {
        numbers.append(Phone(i: 0, phone: 100, name: "Direitos Humanos"))
        numbers.append(Phone(i: 1, phone: 118, name: "Disque Denúncia"))
        numbers.append(Phone(i: 2, phone: 153, name: "Guarda Municipal"))
        numbers.append(Phone(i: 3, phone: 180, name: "Atendimento à mulher"))
        numbers.append(Phone(i: 4, phone: 190, name: "Polícia Militar"))
        numbers.append(Phone(i: 5, phone: 191, name: "Polícia Rodoviária Federal"))
        numbers.append(Phone(i: 6, phone: 192, name: "SAMU"))
        numbers.append(Phone(i: 7, phone: 193, name: "Bombeiros"))
        numbers.append(Phone(i: 8, phone: 197, name: "Polícia Civil"))
        numbers.append(Phone(i: 9, phone: 198, name: "Polícia Rodoviária estadual"))
        numbers.append(Phone(i: 10, phone: 199, name: "Defesa Civil"))
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
                                .searchable(text: $numbers[i.i].name)
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
