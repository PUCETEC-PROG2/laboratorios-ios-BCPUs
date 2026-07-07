import SwiftUI

struct RepoForm: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Formulario")
            }
            .navigationTitle("Formularios de Repositorios")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RepoForm()
}
