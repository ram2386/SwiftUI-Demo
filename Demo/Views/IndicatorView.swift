//
//  IndicatorView.swift
//  Demo
//
//  Created by Ramkrishna on 26/06/23.
//

import SwiftUI

struct IndicatorView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                Rectangle()
                    .frame(width: 77, height: 4)
                    .foregroundColor(index == 0 ?
                                     ColorStyle.Brand :
                                        ColorStyle.Brand.opacity(0.6))
                    .padding(.bottom, 20)
            }
        }
    }
}

struct IndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorView()
    }
}
