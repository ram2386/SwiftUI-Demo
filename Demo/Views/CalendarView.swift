//
//  CalendarView.swift
//  Demo
//
//  Created by Ramkrishna on 26/06/23.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Need help?")
                    .font(.fontNats(size: 40))
                    .foregroundColor(Color("WhiteSand"))
                    .padding(.leading, 30)
                
                Text("Make an appointment or chat with us.")
                    .font(.fontNats(size: 16))
                    .foregroundColor(Color("WhiteSand"))
                    .padding(.leading, 30)
                    .offset(y: -25)
            }
            
            Spacer()
            
            Image(systemName: "calendar")
                .font(.system(size: 39))
                .foregroundColor(Color("WhiteSand"))
                .padding(.trailing, 25)
        }
        .background(
            GeometryReader { geometry in
                RoundedRectangle(cornerRadius: 10,
                                 style: .continuous)
                .path(in: CGRect(x: 10,
                                 y: 0,
                                 width: geometry.size.width - 20,
                                 height: geometry.size.height))
                .fill(ColorStyle.Brand)
            }
        )
        .offset(x: 0, y: 0)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
