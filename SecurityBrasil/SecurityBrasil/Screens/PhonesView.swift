//
//  PhonesView.swift
//  SecurityBrasil
//
//  Created by Carlos Amaral on 17/01/22.
//

import SwiftUI

struct PhonesView: View {
    @State private var searchText : String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    
                    HStack {
                        TextField("Pesquisar...", text: $searchText)
                            .keyboardType(.default)
                        
                        if !searchText.isEmpty {
                            Button {
                                
                            } label: {
                                Image(systemName: "magnifyingglass")
                                    .padding(4)
                                    .foregroundColor(.white)
                                    .background(.red)
                                    .cornerRadius(5)
                            }
                        }
                    }
                    .frame(height: 20)
                    .padding(.bottom)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ForEach(0..<10) { i in
                                PhoneComponent()
                                    
                            }
                        }
                    }
                }
            }
            .navigationTitle("Telefones")
            .navigationBarItems(
                trailing: HStack {
                    Image(systemName: "plus")
                }
            )
            .padding()
        }
    }
}

struct PhonesView_Previews: PreviewProvider {
    static var previews: some View {
        PhonesView()
    }
}
