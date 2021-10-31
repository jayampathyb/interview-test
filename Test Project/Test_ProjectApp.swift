//
//  Test_ProjectApp.swift
//  Test Project
//
//  Created by Heshan Yodagama on 10/31/21.
//

import SwiftUI

@main
struct Test_ProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
