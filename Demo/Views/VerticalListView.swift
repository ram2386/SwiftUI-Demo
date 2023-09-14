//
//  VerticalListView.swift
//  Demo
//
//  Created by Ramkrishna on 26/06/23.
//

import SwiftUI

struct VerticalListView: View {
    let cards: [Card]
    
    var body: some View {
        
        ScrollView(.vertical) {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())],
                      spacing: 24) {
                ForEach(cards, id: \.self) { item in
                    
                    NavigationLink(destination: ProductView(product: item)) {
                        VStack(alignment: .center) {
                            Image(item.img)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 160, height: 100)
                                .cornerRadius(10)
                                .offset(x: 0, y: 45)
                            
                            VStack(alignment: .leading) {
                                Text(item.title)
                                    .font(.fontNats(size: 20))
                                    .foregroundColor(ColorStyle.Brand)
                                    .offset(x: 10, y: 20)
                                
                                HStack(alignment: .top) {
                                    Text(item.price)
                                        .font(.fontNats(size: 16))
                                        .foregroundColor(ColorStyle.Black3)
                                        .offset(x: 10, y: -40)
                                    
                                    Spacer()
                                    
                                    Button {
                                    } label: {
                                        Image(systemName: "cart.fill")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .foregroundColor(ColorStyle.Brand)
                                            .frame(width: 15, height: 15)
                                    }
                                    .offset(x: 0, y: -30)
                                    .padding(.horizontal)
                                }
                            }
                        }
                        .frame(height: 170)
                        .background(Color.white)
                        .cornerRadius(10)
                    }
                }
            }
            .padding([.leading, .trailing], 10)
            .padding(.bottom, 20)
        }
    }
}

struct VerticalListView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalListView(cards: Card.sampleData)
    }
}
