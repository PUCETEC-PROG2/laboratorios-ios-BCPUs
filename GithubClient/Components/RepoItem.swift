//
//  RepoItem.swift
//  GithubClient
//
//  Created by Usuario invitado on 7/7/26.
//

import SwiftUI

struct RepoItem: View {
    let repository: Repository
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: repository.owner.avatarUrl)!){ image in
                image
                    .resizable()
                    .scaledToFill()
            }placeholder: {
                Image(uiImage: .githubLogo)
                .resizable()
                .scaledToFill()
            
            }
            .frame(width: 80, height: 80)
            
            
            Spacer()
            
            VStack (alignment: .leading){
                Text(repository.name)
                    .font(.title2)
                
                if let description = repository.description{
                    Text(description)
                        .font(.caption)
                }
                if let lenguage = repository.lenguage{
                    HStack{
                        Text("Lenguaje de programación")
                            .font(.caption)
                        Spacer()
                        Text(lenguage)
                            .font(.caption)
                    }
                }
            }
    
        }
        .padding()
    }
}

#Preview {
    RepoItem(
        repository:  Repository(
            id: 1,
            name: "Repo prueba",
            description: "lorem ipsum ahsdjkashfrkaghshadsf",
            lenguage: "Swift",
            owner: UserInfo(
                login: "BCastillo",
                name: "Braulio Castillo",
                avatarUrl: "https://www.google.com/url?sa=t&source=web&rct=j&url=https%3A%2F%2Fwww.flaticon.es%2Ficono-gratis%2Flogotipo-de-github_25231&ved=0CBYQjRxqFwoTCIj3-d-H05UDFQAAAAAdAAAAABA3&opi=89978449",
                bio: "esta es una bio de prueba"
            )
        )
    )
}
