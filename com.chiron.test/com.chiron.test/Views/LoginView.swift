import SwiftUI

struct LoginView: View {
    @ObservedObject var session: UserSession
    @State private var inputName = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to MentorConnect")
                .font(.title)
                .bold()

            TextField("Enter your name", text: $inputName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            Button("Continue") {
                session.username = inputName
                session.isLoggedIn = true
            }
            .disabled(inputName.isEmpty)
        }
    }
}
