//
//  RepoItem.swift
//  GithubClient
//
//  Created by Usuario invitado on 7/7/26.
//

import SwiftUI

struct RepoItem: View {
    var body: some View {
        HStack {
            Image(uiImage: .githubLogo)
                .resizable()
                .frame(width: 80, height: 80)
            Spacer()
            VStack (alignment: .leading){
                Text("Nombre del repositorio")
                    .font(.title2)
                    .foregroundStyle(.accent)
                Text("Descripcción del repositorio")
                
                HStack{
                    Text("Lenguaje de programación")
                        .font(.caption)
                    Spacer()
                    Text("Swift")
                        .font(.caption)
                }
            }
    
        }
        .padding()
    }
}

#Preview {
    RepoItem()
}
