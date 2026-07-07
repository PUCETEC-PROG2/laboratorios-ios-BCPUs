import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Perfil de Usuario1")
            }
            .navigationTitle("Perfil de Usuario")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Profile()
}
