//
//  HeaderView.swift
//  Demo
//
//  Created by Ramkrishna on 26/06/23.
//

import SwiftUI

struct HeaderView: View {
    let name: String
    let iconName: String
    
    var body: some View {
        HStack {
            Text(name)
                .font(.fontNats(size: 33))
                .foregroundColor(ColorStyle.Black3)
                .padding(.leading, 10)
            
            Spacer()
            
            Image(systemName: iconName)
                .font(.system(size: 25))
                .padding(.trailing, 10)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CatalogNavigation: View {
    let name: String
    let leftIcon: String
    let rightIcon: String
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        HStack {
            Button {
                dismiss()
            } label: {
                Image(systemName: leftIcon)
                    .foregroundColor(Color.black)
                    .font(.system(size: 25))
                    .padding(.leading, 10)
            }
            
            Text(name)
                .font(.fontNats(size: 30))
                .foregroundColor(ColorStyle.Black3)
                .padding(.leading, 10)
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: rightIcon)
                    .foregroundColor(Color.black)
                    .font(.system(size: 25))
                    .padding(.trailing, 16)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: 40)
    }
}

struct CatalogHeader: View {
    let name: String
    let iconName: String
    
    var body: some View {
        HStack {
            Text(name)
                .font(.fontNats(size: 24))
                .foregroundColor(ColorStyle.Black3)
                .padding(.leading, 16)
            
            Spacer()
            
            Image(iconName)
                .font(.system(size: 25))
                .padding(.trailing, 16)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: 40)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
//        HeaderView(name: "Welcome!", iconName: "person")
        CatalogNavigation(name: Constant.Catalog.navName,
                          leftIcon: Constant.Catalog.navLeftIcon,
                          rightIcon: Constant.Catalog.navRightIcon)
    }
}
