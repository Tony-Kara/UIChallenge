//
//  ContentView.swift
//  UIChallenge
//
//  Created by mac on 9/22/21.
//

import SwiftUI

struct ContentView: View {
    
    var cardColor: Color {
        return Color(
            .sRGB,
            red: Double.random(in: 0..<1),
            green: Double.random(in: 0..<1),
            blue: Double.random(in: 0..<1),
            opacity: 1
        )
    }
    
    
    var body: some View {

        
        
     
           
       
            
        VStack(alignment: .leading, spacing: 0) {
            
            GeometryReader { geo in
                
                    TabView {
                    
                        ForEach(0..<51){ index  in
                            ZStack {
                                
                                Rectangle()
                                    .foregroundColor(cardColor)
                                
                                VStack {
                                    
                                    Image(systemName: "\(index).circle")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding()
                                }
                                    
                            
                            }
                            .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                           
                                .cornerRadius(20)
                                    .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                        }
                        
                       
            }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    //this modifier ensures that the ... for scrolling pages always appears
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
        }
        
                
              
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
