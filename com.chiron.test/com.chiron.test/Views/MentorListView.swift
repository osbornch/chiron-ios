import SwiftUI

struct MentorListView: View {
    @ObservedObject var session: UserSession

    let mentors = [
        Mentor(name: "Alice Chen", expertise: "iOS Development", bio: "5 years experience at Apple and startups."),
        Mentor(name: "Brian Lee", expertise: "Product Management", bio: "Ex-Google PM, passionate about education."),
        Mentor(name: "Carmen Wu", expertise: "UX Design", bio: "Design lead at a fintech company.")
    ]

    var body: some View {
        NavigationView {
            List(mentors) { mentor in
                NavigationLink(destination: MentorDetailView(mentor: mentor, user: session)) {
                    VStack(alignment: .leading) {
                        Text(mentor.name).font(.headline)
                        Text(mentor.expertise).font(.subheadline).foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Mentors")
        }
    }
}
