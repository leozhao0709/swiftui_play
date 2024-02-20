import Inject
import SwiftUI

@available(macOS 12.0, *)
public struct HelloWorldView: View {

  @ObserveInjection var inject

  public init() {}

  public var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.orange)
      Text("Hello, world!")
    }
    .padding()
    .enableInjection()
  }
}

@available(macOS 12.0, *)#Preview{
  HelloWorldView()
}
