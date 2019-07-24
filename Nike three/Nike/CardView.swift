//
//  CardView.swift
//  Nike
//
//  Created by Ronald Bowser on 7/9/19.
//  Copyright © 2019 Ronald Bowser. All rights reserved.
//

import SwiftUI

struct CardView : View {
    
    var shoe: Shoe
   
    var body: some View {
        
        ZStack {
            Image(shoe.imageName)
                
                // Shoe image modifiers
                .resizable()
                .renderingMode(.original)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .aspectRatio(contentMode: .fill)
            
            VStack{
                HStack {
                    VStack(alignment: .leading){
                        
                        Text(shoe.product)
                            // Shoe product modifiers
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .padding(.top)
                        
                        Text(shoe.catagory.rawValue)
                            // shoe catagory modifiers
                            .foregroundColor(.black)
                        
                    }
                    Spacer()
                    Text("$" + String(format:"%.2f", shoe.price))
                    // Price modifers
                    .font(.subheadline)
                    .fontWeight(.bold)
                }
                // HStack horizontal padding
                .padding(.horizontal)
                Spacer()
            }
            // VStack frame size
            .frame(width: 340, height: 220)
            
        }
                    
                    
        // ZStack frame size and modifiers
        .frame(width: 340, height: 220)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2, x: 2, y: 2)
        
    }
    
}

#if DEBUG
struct CardView_Previews : PreviewProvider {
    static var previews: some View {
        CardView(shoe: shoeData[3])
    }
}
#endif
