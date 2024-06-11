// import Inject
import SwiftUI

public struct ShapeBootcampView: View {

  // @ObserveInjection var inject

  public init() {}
  public var body: some View {
    VStack {
      // Rectangle()
      Circle()
        // RoundedRectangle(cornerRadius: 10)
        .trim(from: 0.2, to: 1)
        // .fill(Color.green)
        .stroke()
        // .stroke(Color.red)
        //        .stroke(Color.blue, lineWidth: 30)
        .frame(width: 200, height: 400)
        .overlay {
          Circle().stroke(Color.red)
        }
    }
    // .enableInjection()
  }
}

#Preview {
  ShapeBootcampView()
}
