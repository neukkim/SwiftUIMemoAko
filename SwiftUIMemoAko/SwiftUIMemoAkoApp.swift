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
          //제거
          //ContentView()
          
          //변경
          MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
