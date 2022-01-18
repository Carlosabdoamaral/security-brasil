//
//  ContentView.swift
//  SecurityBrasil
//
//  Created by Carlos Amaral on 17/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            
            PhonesView()
                .tabItem {
                    Text("Call")
                    Image(systemName: "phone.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
