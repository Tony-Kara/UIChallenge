//
//  ContentView.swift
//  UIChallenge
//
//  Created by mac on 9/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        
     
           
       
            
        VStack(alignment: .leading, spacing: 0) {
            
            GeometryReader { geo in
                
                    TabView {
                    
                        ZStack {
                            
                            Rectangle()
                        
                        }
                        .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                            .cornerRadius(15)
                                .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
            }
            }
        }
        
                
              
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
