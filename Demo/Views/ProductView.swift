//
//  ProductView.swift
//  Demo
//
//  Created by Ramkrishna on 21/06/23.
//

import SwiftUI

struct ProductView: View {
    let product: Card
    
    var body: some View {
        NavigationStack {
            VStack {
                ProductImage(product: product)
                DescriptionView(product: product)
                Divider()
                    .padding([.leading, .trailing], 16)
                    .padding(.top, 20)
                    .padding(.bottom, 15)
                QuantityView()
                AddToCartButton()
            }
            .ignoresSafeArea(edges: .top)
        }
        .navigationBarHidden(true)
    }
}

struct ProductImage: View {
    let product: Card
    
    var body: some View {
        Image(product.img)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width, height: 405)
            .overlay(CloseButtonView(),
                     alignment: .topTrailing)
            .overlay(IndicatorView(), alignment: .bottom)
            .background(Color.cyan)
    }
}

struct DescriptionView: View {
    let product: Card
    
    var body: some View {
        VStack {
            HStack {
                Text(product.title)
                    .font(.fontNats(size: 30))
                    .foregroundColor(ColorStyle.Black3)
                    .padding(.leading, 16)
                
                Spacer()
                
                Text(product.price)
                    .font(.fontNats(size: 30))
                    .foregroundColor(ColorStyle.Brand)
                    .padding(.trailing, 16)
            }
            .frame(height: 30)
            
            HStack {
                Text("Availability")
                    .font(.fontNats(size: 16))
                    .foregroundColor(ColorStyle.Black3)
                    .padding(.leading, 16)
                
                Spacer()
                
                Text("In Stock")
                    .font(.custom("", size: 18))
                    .foregroundColor(ColorStyle.Brand)
                    .padding(.trailing, 16)
            }
            .frame(height: 20)
            
            HStack {
                Text("Rating")
                    .font(.fontNats(size: 16))
                    .foregroundColor(ColorStyle.Black3)
                    .padding(.leading, 16)
                
                Spacer()
                
                StarView(fillCount: product.favouritesCount)
                .padding(.trailing, 16)
            }
            .frame(height: 20)
        }
    }
}

struct QuantityView: View {
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Quantity")
                    .font(.fontNats(size: 24))
                    .foregroundColor(ColorStyle.Black3)
                    .padding(.leading, 16)
                
                Spacer()
                
                HStack {
                    Button {
                    } label: {
                        Text("-")
                            .foregroundColor(ColorStyle.Black3)
                    }
                    .frame(width: 35, height: 35)
                    
                    Text("1")
                        .frame(width: 32, height: 32)
                        .foregroundColor(ColorStyle.Black3)
                        .background(Color.white)
                        .cornerRadius(10)
                    
                    Button {
                    } label: {
                        Text("+")
                            .foregroundColor(ColorStyle.Black3)
                    }
                    .frame(width: 35, height: 35)
                }
                .background(ColorStyle.Brand.opacity(0.1))
                .cornerRadius(10)
                .padding(.trailing, 16)
            }
            .frame(height: 50)
            
            HStack {
                Text("Total")
                    .font(.fontNats(size: 32))
                    .foregroundColor(ColorStyle.Black3)
                    .padding(.leading, 16)
                
                Spacer()
                
                Text("$90")
                    .font(.fontNats(size: 32))
                    .foregroundColor(ColorStyle.Brand)
                    .padding(.trailing, 16)
            }
            .frame(height: 35)
        }
    }
}

@ViewBuilder
func AddToCartButton() -> some View {
    HStack {
        Image(systemName: "cart")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.white)
            .frame(width: 15, height: 15)
        
        Text("Add to cart")
            .font(.fontNats(size: 24))
            .foregroundColor(Color.white)
            .padding(.leading, 8)
    }
    .frame(width: 205, height: 60)
    .background(ColorStyle.Brand)
    .cornerRadius(5)
    .padding(.top, 15)
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: Card.sampleData.first!)
    }
}
