import SwiftUI

// MARK: - Models
struct Mentor: Identifiable {
    let id = UUID()
    let name: String
    let expertise: String
    let bio: String
}
