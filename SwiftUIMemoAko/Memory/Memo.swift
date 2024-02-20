//
//  Memo.swift
//  SwiftUIMemoAko
//
//  Created by SunMin Hong on 2/20/24.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
  //프로토콜
  // Identifiable: 데이터를 리스트에 쉽게 바인딩
  // ObservableObject: 메모를 편집, 뷰를 자동으로 업데이트
  let id: UUID
  @Published var content: String
  //@Published 특성을 추가
  //새로운 값을 추가 하면 바인딩 되어 있는 UI가 자동으로 업데이트
  let insertDate: Date
  
  init(content: String, insertDate: Date = Date.now) {
    id = UUID()
    self.content = content
    self.insertDate = insertDate
  }
}
