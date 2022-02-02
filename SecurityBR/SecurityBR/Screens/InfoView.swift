//
//  InfoView.swift
//  SecurityBR
//
//  Created by Carlos Amaral on 24/01/22.
//

import SwiftUI

struct InfoView: View {
    
    let githubURL = URL(string: "https://github.com/Carlosabdoamaral/SecurityBrasil") ?? URL(string: "https://apple.com")
    
    var body: some View {
        ZStack {
            VStack {
                Text("Sobre nós")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(50)
                
                HStack {
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.accentColor)
                        .frame(width: 30)
                        .padding(.horizontal, 6)
                    
                    VStack(alignment: .leading) {
                        Text("Quem somos")
                            .fontWeight(.semibold)
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a est tellus.")
                    }
                    
                    Spacer()
                }
                .padding()
                
                HStack {
                    Image(systemName: "terminal")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.accentColor)
                        .frame(width: 30)
                        .padding(.horizontal, 6)
                    
                    VStack(alignment: .leading) {
                        Text("Código fonte")
                            .fontWeight(.semibold)
                        Link(destination: githubURL!) {
                            Text("Github")
                        }
                    }
                    
                    Spacer()
                }
                .padding()
                
                Spacer()
                
                Link(destination: URL(string: "https://www.instagram.com/carlosamaral._/")!, label: {
                    Text("Entre em contato")
                        .foregroundColor(.white)
                        .font(.callout)
                })
                .padding(10)
                .background(Color.accentColor)
                .cornerRadius(5)
                
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
