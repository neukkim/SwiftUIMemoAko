//
//  MainListView.swift
//  SwiftUIMemoAko
//
//  Created by SunMin Hong on 2/19/24.
//

import SwiftUI

struct MainListView: View {
  @EnvironmentObject var store: MemoStore
  // @EnvironmentObject 하나의 데이터를 여려뷰에서 공유
  
    var body: some View {
      //클로저
      NavigationView {
        List(store.list) { memo in
          // .leading: 왼쪽 정렬
          VStack(alignment: .leading) {
            Text(memo.content)
              .font(.body)
              .lineLimit(1)
            
            Text(memo.insertDate, style: .date)
              .font(.caption)
              .foregroundStyle(.secondary)
          }
        }
        .listStyle(.plain)
        .navigationTitle("내 메모")
        //모디파이어: 특별한 메소드
        //필요한 속성 변경, 조작
      }
    }
}

#Preview {
    MainListView()
    .environmentObject(MemoStore())
}
