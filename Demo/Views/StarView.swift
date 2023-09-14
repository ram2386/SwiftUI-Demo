//
//  StarView.swift
//  Demo
//
//  Created by Ramkrishna on 26/06/23.
//

import SwiftUI

struct StarView: View {
    let fillCount: Int
    var body: some View {
        HStack {
            ForEach(0..<5) { index in
                Button {
                } label: {
                    Image(systemName: "star.fill")
                        .frame(width: 15, height: 15)
                        .foregroundColor(index < fillCount ? .yellow: .gray)
                }
            }
        }
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView(fillCount: 2)
    }
}
