//
//  test.swift
//  LSM
//
//  Created by Irfan on 06/02/25.
//

import SwiftUI

struct test: View {
    @State private var scrollOffset: CGFloat = 0

    var body: some View {
        GeometryReader { geometry in
            let screenHeight = geometry.size.height
            let topHeight = max(screenHeight * 0.3 - scrollOffset, 80) // Min height of top part
            
            VStack(spacing: 0) {
                // Top Image Section
                Image("Home")
                    .resizable()
                    .scaledToFill()
                    .frame(height: topHeight)
                    .clipped()
                    .animation(.easeInOut(duration: 0.2), value: topHeight) // Smooth animation
                
                // Scrollable Content
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(1..<30) { i in
                            Text("Item \(i)")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue.opacity(0.2))
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                    .background(GeometryReader { proxy in
                        Color.clear.preference(key: ScrollOffsetPreferenceKey.self, value: -proxy.frame(in: .global).origin.y)
                    })
                }
                .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                    self.scrollOffset = max(value, 0) // Prevent negative values
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

// Custom Preference Key for Tracking Scroll Offset
struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
#Preview {
    test()
}
