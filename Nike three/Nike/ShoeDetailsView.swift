//
//  ShoeDetailsView.swift
//  Nike
//
//  Created by Ronald Bowser on 7/20/19.
//  Copyright © 2019 Ronald Bowser. All rights reserved.
//

import SwiftUI

struct ShoeDetails: View {
    @Binding var shoeDetials: Shoe
    
    var body: some View {
        
        VStack (spacing: 24){
            
            // Show shoe product
            Text(self.shoeDetials.product)
                // Shoe product modifiers
                .font(.system(size: 18))
                .fontWeight(.bold)
                .lineLimit(nil)
                .padding()
            
            Image(self.shoeDetials.imageName)
                // Shoe image modifiers
                .resizable()
                .renderingMode(.original)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height:300)
                .fixedSize()
            // Set selected show price to show in correct format
            Text("$" + String(format:"%.2f",self.shoeDetials.price))
                // Shoe price modifiers
                .font(.headline)
                .foregroundColor(.blue)
                .lineLimit(nil)
            // Shoe image
            
            // Shoe product
            Text("PRODUCT DETAILS")
                //  shoe product modifiers
                .font(.headline)
                .foregroundColor(.gray)
            
            // Shoe description details
            Text(self.shoeDetials.description)
                // Shoe description modifiers
                .font(.system(.subheadline, design: .serif))
                .baselineOffset(1)
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
                .lineSpacing(5)
                .padding(.horizontal, 24.0)
            Spacer()        }
            // VStack modifiers
            .frame(minHeight: 0, maxHeight: .infinity)
        
        
    }
    
    
    
}


#if DEBUG
struct ShoeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        
        ShoeDetails(shoeDetials: .constant(shoeData[13]))
    }
}
#endif

