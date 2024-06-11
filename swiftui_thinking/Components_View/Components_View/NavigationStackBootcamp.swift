//
//  NavigationStackBootcamp.swift
//  Components_View
//
//  Created by Lei Zhao on 5/20/24.
//

import SwiftUI

struct NavigationStackBootcamp: View {
  
  let fruits = ["Apple", "Orange", "Banana"]
  
  var body: some View {
    NavigationStack {
      ScrollView {
        VStack(spacing: 40, content: {
          ForEach(fruits, id: \.self) { fruit in
            NavigationLink(value: fruit) {
              Text(fruit)
                .padding()
                .background(Color.yellow)
            }
//            NavigationLink(fruit) {
//              MySecondView(name: fruit)
//            }
          }
        })
      }
      .navigationTitle("Nav Bootcamp")
      .navigationBarTitleDisplayMode(.automatic)
      .navigationDestination(for: String.self) { fruit in
        MySecondView(name: fruit)
      }
    }
  }
}

struct MySecondView: View {
  let name: String
  
  init(name: String) {
    self.name = name
    print("--orange---\(name)")
  }
  
  var body: some View {
    Text(name)
      .padding()
      .background(Color.orange)
  }
}

#Preview {
  NavigationStackBootcamp()
}
