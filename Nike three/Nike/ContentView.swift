//
//  ContentView.swift
//  Nike
//
//  Created by Ronald Bowser on 7/9/19.
//  Copyright © 2019 Ronald Bowser. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView : View {
       
    @State private var mensCatagory = Shoe.Catagory.mens
    @State private var womensCatagory = Shoe.Catagory.womens
    @State private var kidsCatagory = Shoe.Catagory.kids
    
    var body: some View {
        
        TabbedView{
             // Show men's shoes
            ShoeView(catagory: $mensCatagory, shoes: shoeData)
                .tabItem {
                    VStack {
                        Image(systemName: "m.circle.fill")
                        Text(mensCatagory.rawValue)
                        
                    }
            }
            .tag(0)
            // Show women's shoes
            ShoeView(catagory: $womensCatagory, shoes: shoeData)
                .tabItem {
                    VStack {
                        Image(systemName: "w.circle.fill")
                           
                        Text(womensCatagory.rawValue)
                    }
            }
            .tag(1)
            // Show kid's shoes
            ShoeView(catagory: $kidsCatagory, shoes: shoeData)
                .tabItem {
                    VStack {
                        Image(systemName: "k.circle.fill")
                        Text(kidsCatagory.rawValue)
                    }
            }
            .tag(2)
            
        }
    }
}



#if DEBUG
struct ContentView_Previews : PreviewProvider {
    
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
            .preferredColorScheme(.dark)
        }
        
    }
}
#endif
