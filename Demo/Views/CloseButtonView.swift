//
//  CloseButtonView.swift
//  Demo
//
//  Created by Ramkrishna on 26/06/23.
//

import SwiftUI

struct CloseButtonView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark.circle.fill")
                .font(.system(size: 32))
                .foregroundColor(.white)
                .padding(.top, 60)
                .padding(.trailing, 20)
        }
    }
}
