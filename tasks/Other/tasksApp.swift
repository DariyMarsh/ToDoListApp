//
//  tasksApp.swift
//  tasks
//
//  Created by Ruslan Marshaev on 9/11/24.
//
import FirebaseCore
import SwiftUI

@main
struct tasksApp: App {
    init () {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
