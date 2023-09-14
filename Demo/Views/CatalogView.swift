//
//  CatalogView.swift
//  Demo
//
//  Created by Ramkrishna on 21/06/23.
//

import SwiftUI

struct CatalogView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                CatalogNavigation(name: Constant.Catalog.navName,
                                  leftIcon: Constant.Catalog.navLeftIcon,
                                  rightIcon: Constant.Catalog.navRightIcon)
                Spacer(minLength: 30)
                CatalogHeader(name: Constant.Catalog.headerName,
                              iconName: Constant.Catalog.iconName)
                VerticalListView(cards: Card.sampleData)
            }
            .background(ColorStyle.Brand.opacity(0.1))
        }
        .navigationBarHidden(true)
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
