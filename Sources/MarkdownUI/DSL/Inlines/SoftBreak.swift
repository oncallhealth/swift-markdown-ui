import Foundation

/// A soft break in a Markdown content block.
///
/// A ``Markdown`` view will display a soft break as a space.
@available(iOS 15, *)
public struct SoftBreak: InlineContentProtocol {
  /// Creates a soft break inline element.
  public init() {}

  public var _inlineContent: InlineContent {
    .init(inlines: [.softBreak])
  }
}

@available(iOS 15, *)
extension SoftBreak {
  public enum Mode {
    /// Treat a soft break as a space
    case space

    /// Treat a soft break as a line break
    case lineBreak
  }
}
