//
//  SegmentView.swift
//  Demo
//
//  Created by Ramkrishna on 26/06/23.
//

import SwiftUI

enum SegmentSection: String, CaseIterable {
    case wedding = "Wedding"
    case decor = "Decor"
    case gift = "Gift"
}

struct SegmentView: View {
    @State var segmentationSelection: SegmentSection = .wedding
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(named: "Brand")
        UISegmentedControl.appearance().backgroundColor = UIColor(named: "Black3")?.withAlphaComponent(0.1)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(named: "Black3") ?? .black], for: .normal)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    var body: some View {
        Picker("", selection: $segmentationSelection) {
            ForEach(SegmentSection.allCases, id: \.self) { option in
                Text(option.rawValue)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        .foregroundColor(Color.orange)
        .padding([.leading, .trailing], 10)
        .offset(x: 0, y: 0)
    }
}

struct SegmentView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentView()
    }
}
