//
//  MemoStore.swift
//  SwiftUIMemoAko
//
//  Created by SunMin Hong on 2/20/24.
//

import Foundation

class MemoStore: ObservableObject {
  @Published var list: [Memo]
  
  init() {
    list = [
      Memo(content: "Hello~", insertDate: Date.now),
      Memo(content: "SwiftUI~", insertDate: Date.now.addingTimeInterval(3600 * -24))
    ]
  }
  
  //CRUD
  func insert(memo: String) {
    list.insert(Memo(content: memo), at: 0)
  }
  
  func update(memo: Memo?, content: String) {
    //옵셔널 바인딩
    guard let memo = memo else {
      return
    }
    
    memo.content = content
  }
  
  func delete(memo: Memo) {
    list.removeAll { $0.id == memo.id }
  }
  
  func delete(set: IndexSet) {
    for index in set {
      list.remove(at: index)
    }
  }
}
