//
//  SwiftUIMemoAkoApp.swift
//  SwiftUIMemoAko
//
//  Created by SunMin Hong on 2/19/24.
//

import SwiftUI

@main
struct SwiftUIMemoAkoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
