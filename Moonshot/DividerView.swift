//
//  DividerView.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 12/10/24.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
        
    }
}

struct DividerViewPreview: View {
    var body: some View {
        DividerView()
    }
}
#Preview {
    DividerView()
}
