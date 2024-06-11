//
//  SwiftUIView.swift
//
//
//  Created by Lei Zhao on 5/18/24.
//

// import Inject
import SwiftUI

public struct PickerBootcampView: View {
  
  // @ObserveInjection var inject
  @State private var selectIndex = 0
  let types = ["生活用品23", "数码家电", "服饰", "ios学习"]
  
  public init() {}
  
  public var body: some View {
    VStack {
      Menu {
        //        Picker(selection: $selectIndex, label: EmptyView()) {
        //          ForEach(Array(types.indices), id: \.self) { index in
        //            HStack {
        //              Text(types[index])
        //              Image(systemName: "heart.fill")
        //            }
        //          }
        //        }
        ForEach(Array(types.indices), id: \.self) {
          index in
          Button(action: {
            self.selectIndex = index
          }, label: {
            HStack {
              Text(types[index])
              Image(systemName: "heart.fill")
            }
          })
        }
      } label: {
        Text("Picker: \(types[selectIndex])")
          .padding()
          .frame(maxWidth: .infinity)
          .background(Color.orange)
          .foregroundColor(.white)
          .font(.headline)
          .cornerRadius(10)
          .padding(.horizontal, 30)
      }
    }
    // .enableInjection()
  }
}

#Preview {
  PickerBootcampView()
}
