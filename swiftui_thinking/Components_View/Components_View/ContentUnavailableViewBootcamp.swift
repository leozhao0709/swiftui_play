//
//  ContentUnavailableViewBootcamp.swift
//  Components_View
//
//  Created by Lei Zhao on 5/21/24.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
//      ContentUnavailableView.search
      ContentUnavailableView("No Internet connect", systemImage: "wifi.slash", description: Text("Please connect to the internet and try again"))
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
