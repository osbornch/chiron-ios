//
//  com_chiron_testApp.swift
//  com.chiron.test
//
//  Created by Chao Li on 4/12/25.
//
import SwiftUI

@main
struct com_chiron_testApp: App {
    @StateObject private var session = UserSession()

    var body: some Scene {
        WindowGroup {
            if session.isLoggedIn {
                MentorListView(session: session)
            } else {
                LoginView(session: session)
            }
        }
    }
}
