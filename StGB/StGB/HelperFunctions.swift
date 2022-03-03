//
//  HelperFunctions.swift
//  STGB
//
//  Created by Peter Oertig on 23.07.20.
//  Copyright © 2020 Peter Oertig. All rights reserved.
//

import SwiftUI
import Foundation
import Combine



struct HighlightedText: View {
let text: String
let searchTerm: String
let caseInsensitiv: Bool

init(_ text: String, searchTerm: String, caseInsensitiv: Bool = true) {
    self.text = text
    self.searchTerm = searchTerm
    self.caseInsensitiv = caseInsensitiv
}

var body: some View {
    guard  let regex = try? NSRegularExpression(pattern: NSRegularExpression.escapedPattern(for: searchTerm).trimmingCharacters(in: .whitespacesAndNewlines).folding(options: .regularExpression, locale: .current), options: caseInsensitiv ? .caseInsensitive : .init()) else {
        return Text(text)
    }
   let range = NSRange(location: 0, length: text.count)
            let matches = regex.matches(in: text, options: .withTransparentBounds, range: range)

            return text.enumerated().map { (char) -> Text in
                guard matches.filter( {
                    $0.range.contains(char.offset)
                }).count == 0 else {
                    return Text( String(char.element) ).foregroundColor(.yellow).fontWeight(.bold)
                }
                return Text( String(char.element) )

            }.reduce(Text("")) { (a, b) -> Text in
                return a + b
            }
        }
    }


struct ActivityIndicator: UIViewRepresentable {

    @Binding var animating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        animating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
