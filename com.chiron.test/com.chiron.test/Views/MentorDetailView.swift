import SwiftUI

struct MentorDetailView: View {
    let mentor: Mentor
    @ObservedObject var user: UserSession
    @State private var message = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(mentor.name).font(.title).bold()
            Text("Expertise: \(mentor.expertise)")
            Text(mentor.bio).italic()

            Text("Send a message:")
            TextEditor(text: $message)
                .frame(height: 100)
                .border(Color.gray)

            Button("Send") {
                print("Message from \(user.username): \(message)")
                message = ""
            }
            .disabled(message.trimmingCharacters(in: .whitespaces).isEmpty)

            Spacer()
        }
        .padding()
        .navigationTitle("Connect")
    }
}
