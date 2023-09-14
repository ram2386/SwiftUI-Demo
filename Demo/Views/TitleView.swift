//
//  TitleView.swift
//  Demo
//
//  Created by Ramkrishna on 26/06/23.
//

import SwiftUI

struct TitleView: View {
    let name: String
    var body: some View {
        HStack {
            Text(name)
                .font(.fontNats(size: 18))
                .foregroundColor(ColorStyle.Black3)
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(name: "FLOURIST")
    }
}
