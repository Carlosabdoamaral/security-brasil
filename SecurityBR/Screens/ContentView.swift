//
//  ContentView.swift
//  SecurityBR
//
//  Created by Carlos Amaral on 22/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText : String = ""
    @State private var isShowingInfos : Bool = false
    
    @State var numbers : [Phone] = PhonesData
    
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
