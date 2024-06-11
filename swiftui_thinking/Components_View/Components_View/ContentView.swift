//
//  ContentView.swift
//  Components_View
//
//  Created by Lei Zhao on 2/16/24.
//

import SwiftUI
import Components

struct ContentView: View {
  @ObserveInjection var inject
  
  var body: some View {
    VStack {
//      HelloWorldView()
//      TextBootCampView()
//      ShapeBootcampView()
//      PickerBootcampView()
//      NavigationStackBootcamp()
      ContentUnavailableViewBootcamp()
    }
    .enableInjection()
  }
}

#Preview {
  ContentView()
}
