import Inject
import SwiftUI

@available(macOS 12.0, *)
public struct TextBootCampView: View {

  @ObserveInjection var inject

  public init() {}

  public var body: some View {
    VStack {
      Text(
        "Hello World! This is Swiftui Thinking Bootcamp. I am really enjoying the course and learning a lot!"
      )
      // .font(.body)
      .fontWeight(.bold)
      .font(.system(size: 24, weight: .semibold, design: .serif))
      .foregroundStyle(.pink)
      // // .underline()
      .underline(true, color: .yellow)
      //       .italic()
      // // .strikethrough()
      .strikethrough(true, color: .green)
      .baselineOffset(10)
      .kerning(5)
      .multilineTextAlignment(.trailing)
      .frame(width: 400, height: 300, alignment: .trailing)
      // .background(.indigo)
      // .minimumScaleFactor(0.2)
    }
    .enableInjection()
  }
}

@available(macOS 12.0, *)#Preview{
  TextBootCampView()
}
