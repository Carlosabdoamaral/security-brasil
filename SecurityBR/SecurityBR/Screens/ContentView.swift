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
    @State private var isShowingInfos : Bool = false
    
    @State var numbers : [Phone] = [
        Phone(i: 0, phone: 100, name: "Direitos Humanos"),
        Phone(i: 1, phone: 118, name: "Disque Denúncia"),
        Phone(i: 2, phone: 153, name: "Guarda Municipal"),
        Phone(i: 3, phone: 180, name: "Atendimento à mulher"),
        Phone(i: 4, phone: 190, name: "Polícia Militar"),
        Phone(i: 5, phone: 191, name: "Polícia Rodoviária Federal"),
        Phone(i: 6, phone: 192, name: "SAMU"),
        Phone(i: 7, phone: 193, name: "Bombeiros"),
        Phone(i: 8, phone: 197, name: "Polícia Civil"),
        Phone(i: 9, phone: 198, name: "Polícia Rodoviária estadual"),
        Phone(i: 10, phone: 199, name: "Defesa Civil")
    ]
    
    func appendNumbers() {
        
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
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
                    .onTapGesture {
                        isShowingInfos.toggle()
                    }
                    .sheet(isPresented: $isShowingInfos, content: {
                        InfoView()
                    })
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
