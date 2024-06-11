// import Inject
import SwiftUI

public struct HelloWorldView: View {

  // @ObserveInjection var inject

  public init() {}

  public var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.orange)
      Text("Hello, world!")
    }
    .padding()
    // .enableInjection()
  }
}

#Preview {
  HelloWorldView()
}
