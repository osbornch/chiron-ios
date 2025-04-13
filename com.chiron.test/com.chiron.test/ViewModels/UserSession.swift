//
//  UserSession.swift
//  com.chiron.test
//
//  Created by Chao Li on 4/12/25.
//

import SwiftUI
import Foundation


class UserSession: ObservableObject {
    @Published var username: String = ""
    @Published var isLoggedIn: Bool = false
}
