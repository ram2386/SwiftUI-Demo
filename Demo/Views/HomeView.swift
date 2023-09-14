//
//  ContentView.swift
//  Demo
//
//  Created by Ramkrishna on 09/06/23.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        TabView {
            NavigationStack {
                ScrollView(.vertical) {
                    VStack {
                        TitleView(name: Constant.Home.title)
                        HeaderView(name: Constant.Home.headerName,
                                   iconName: Constant.Home.iconName)
                        SegmentView()
                        CalendarView()
                        HorizontalCardIconView(categories: Category.sampleData)
                        HorizontalCardView(cards: Card.sampleData)
                    }
                }
                .background(ColorStyle.Brand.opacity(0.1))
            }
            .navigationBarHidden(true)
            .tabItem {
                Image(systemName: Constant.Home.tabIcon)
                Text(Constant.Home.tabName)
                    .font(.fontNats(size: 18))
            }
            
            CatalogView()
                .tabItem {
                    Image(systemName: Constant.Catalog.tabIcon)
                    Text(Constant.Catalog.tabName)
                        .font(.fontNats(size: 18))
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
