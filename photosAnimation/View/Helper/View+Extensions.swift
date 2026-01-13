//
//  View+Extensions.swift
//  photosAnimation
//
//  Created by Alexandr Gutul on 13/01/2026.
//

import SwiftUI

extension View {
    @ViewBuilder
    func didFrameChange(result: @escaping (CGRect, CGRect) -> ()) -> some View {
        self
            .overlay {
                GeometryReader {
                    let frame = $0.frame(in: .scrollView(axis: .vertical))
                    let bounds = $0.bounds(of: .scrollView(axis: .vertical)) ?? .zero
                    
                    Color.clear
                        .preference(key: FrameKey.self, value: .init(frame: frame, bounds: bounds))
                        .onPreferenceChange(FrameKey.self, perform: { value in
                            result(value.frame, value.bounds)
                        })
                }
            }
    }
}

struct ViewFrame: Equatable {
    let frame: CGRect
    let bounds: CGRect
    
    init(frame: CGRect = .zero, bounds: CGRect = .zero) {
        self.frame = frame
        self.bounds = bounds
    }
}

struct FrameKey: PreferenceKey {
    static var defaultValue: ViewFrame = .init()
    static func reduce(value: inout ViewFrame, nextValue: () -> ViewFrame) {
        value = nextValue()
    }
}
