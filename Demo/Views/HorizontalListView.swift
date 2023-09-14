//
//  HorizontalListView.swift
//  Demo
//
//  Created by Ramkrishna on 26/06/23.
//

import SwiftUI

struct HorizontalCardIconView: View {
    let categories: [Category]
    
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                
                ForEach(categories.indices, id: \.self) { index in
                    
                    NavigationLink(destination: CatalogView()) {
                        
                        VStack {
                            if index == 0 {
                                Image(systemName: "circle.grid.2x2.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 20, height: 20)
                                    .padding(15)
                                    .foregroundColor(.white)
                                    .background(ColorStyle.Brand)
                                    .cornerRadius(10)
                            } else {
                                Image(categories[index].icon)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(10)
                                    .shadow(color: Color.black.opacity(0.3),
                                            radius: 5, x: 0, y: 2)
                            }
                            
                            Text(categories[index].name)
                                .font(.fontNats(size: 14))
                                .foregroundColor(ColorStyle.Black3.opacity(0.5))
                                .offset(x: 0, y: -15)
                        }
                    }
                }
            }
        }
        .padding([.leading, .trailing], 10)
        .offset(x: 0, y: 0)
    }
}

struct HorizontalCardView: View {
    let cards: [Card]

    var body: some View {
        
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(cards.indices, id: \.self) { index in
                    
                    NavigationLink(destination: ProductView(product: cards[index])) {
                        
                        VStack(alignment: .leading) {
                            Text(index == 0 ? "Popularity" : " ")
                                .font(.fontNats(size: 24))
                                .foregroundColor(ColorStyle.Black3)
                                .offset(x: 5, y: 45)
                            
                            VStack(alignment: .leading) {
                                Image(cards[index].img)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 287, height: 149)
                                    .cornerRadius(10)
                                
                                HStack(alignment: .top) {
                                    
                                    VStack(alignment: .leading) {
                                        Text(cards[index].title)
                                            .font(.fontNats(size: 30))
                                            .foregroundColor(ColorStyle.Brand)
                                            .offset(x: 0, y: 10)
                                        
                                        Text(cards[index].price)
                                            .font(.fontNats(size: 22))
                                            .foregroundColor(ColorStyle.Black3)
                                            .offset(x: 0, y: -20)
                                    }
                                    .frame(height: 60)
                                    
                                    Spacer()
                                    
                                    StarView(fillCount: cards[index].favouritesCount)
                                    .offset(x: -5, y: 15)
                                }
                            }
                            .padding(15)
                            .background(Color.white)
                            .cornerRadius(15)
                        }
                    }
                }
            }
            .padding([.leading, .trailing], 10)
        }
        .offset(x: 0, y: 0)
    }
}

struct HorizontalCardIconView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCardIconView(categories: Category.sampleData)
    }
}

struct HorizontalCardView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCardView(cards: Card.sampleData)
    }
}

