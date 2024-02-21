//
//  SwiftUIMemoAkoApp.swift
//  SwiftUIMemoAko
//
//  Created by SunMin Hong on 2/19/24.
//

import SwiftUI

@main
struct SwiftUIMemoAkoApp: App {
  //메모 저장소 커스텀 데이터, 속성으로 저장
  @StateObject var store = MemoStore()
  
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
          //제거
          //ContentView()
          
          //변경
          MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
