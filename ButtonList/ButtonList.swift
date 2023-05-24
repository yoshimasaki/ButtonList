//
//  ButtonList.swift
//  ButtonList
//
//  Created by 正木 祥悠 on 2023/05/24.
//

import SwiftUI

struct ButtonList: View {

    var body: some View {
        ScrollView {
            LazyVStack(spacing: .zero) {
                ForEach(0..<42) { i in
                    Button {
                        print("🐔", #function, "tap row \(i)")
                    } label: {
                        Label(
                            "Row \(i)",
                            systemImage: i % 2 == 0
                            ? "camera.macro"
                            : "carrot"
                        )
                        .foregroundColor(
                            i % 2 == 0
                            ? .red.opacity(0.8)
                            : .orange.opacity(0.8)
                        )
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color(uiColor: .systemBackground))
                    }
//                    .buttonStyle(.plain)

                    Divider()
                }
            }
            .cornerRadius(8 * 4)
            .padding(.horizontal, 8 * 3)
        }
        .background(Color.pink.opacity(0.04))
    }
}

struct ButtonList_Previews: PreviewProvider {

    static var previews: some View {
        ButtonList()
    }
}
