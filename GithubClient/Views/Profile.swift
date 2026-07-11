import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                Text("Braulio Castillo")
                    .font(.title)
                Image(uiImage:  .githubLogo)
                    .resizable()
                    .scaledToFit()
                Text("BCPUs")
                    .font(.headline)
                    .padding(.vertical)
                Text("Lorem Ipsum asjdhakjfhsjkghdkfgsdhkfgshdfgds")
                    .font(.caption)
                
            }
            .padding()
            .navigationTitle("Perfil")
        }
    }
}

#Preview {
    Profile()
}
