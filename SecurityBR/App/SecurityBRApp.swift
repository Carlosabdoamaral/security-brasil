//
//  SecurityBRApp.swift
//  SecurityBR
//
//  Created by Carlos Amaral on 22/01/22.
//

import SwiftUI

@main
struct SecurityBRApp: App {
//    @AppStorage("isShowingInfos") var isShowingInfos : Bool = false
    
    var body: some Scene {
        WindowGroup {
            
            TabView {
                AllPhonesView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Todos")
                }
                
                MapView()
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Mapa")
                }
            }
        }
    }
}
