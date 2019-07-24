//
//  ShoeView.swift
//  Nike
//
//  Created by Ronald Bowser on 7/17/19.
//  Copyright © 2019 Ronald Bowser. All rights reserved.
//

import SwiftUI


struct ShoeView: View {
    
    
    @Binding var catagory: Shoe.Catagory
    @State private var showModal = false
    @State private var selectedShoe = shoeData[0]
    
    var shoes: [Shoe]
    
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators:false) {
                
                // Filter shoes by catagory passed in with @Binding
                ForEach(self.shoes.filter {$0.catagory.rawValue == catagory.rawValue}) { item in
                    
                    Button(action: {
                        self.selectedShoe = item
                        self.showModal.toggle()
                    }){
                    CardView(shoe: item)
                        
                    .padding()
                    }
                    
                }
                              
                
                Spacer()
            }
                // Navigation Title
                .navigationBarTitle(Text(catagory.rawValue))
                .navigationBarItems(trailing: Image("nike-swoosh").resizable().frame(width: 85, height: 85, alignment: .center))
        // Present details with sheet
        }.sheet(isPresented: $showModal) {
            
            ShoeDetails(shoeDetials: self.$selectedShoe)
        }
    }
}



#if DEBUG
struct ShoeView_Previews: PreviewProvider {
    
    static var previews: some View {
        ShoeView(catagory: .constant(Shoe.Catagory.mens), shoes: shoeData)
        .preferredColorScheme(.dark)
    }
}
#endif

