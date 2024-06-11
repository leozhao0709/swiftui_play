//
//  ResizableSheetBootcamp.swift
//  Components_View
//
//  Created by Lei Zhao on 5/21/24.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    @State var showSheet = false
    var body: some View {
      VStack {
        Button("toggle Sheet") {
          showSheet.toggle()
        }
      }
      .sheet(isPresented: $showSheet) {
          Text("123")
          .padding()
          .background(Color.indigo)
//          .presentationDragIndicator(.hidden)
          .presentationDetents([.fraction(0.2), .medium, .large])
      }
    }
}

#Preview {
    ResizableSheetBootcamp()
}
