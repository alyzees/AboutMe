//
//  ContentView.swift
//  AboutMe
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(hue: 0.778, saturation: 0.319, brightness: 0.94).ignoresSafeArea()
            ZStack(alignment:.topTrailing){
                Image("alyzee").resizable().aspectRatio(contentMode: .fit)
                
                VStack (alignment: .center, spacing: 10.0){
                    Text("all about...").font(.title3).multilineTextAlignment(.center)
                    Text("Alyzee Sosa").font(.title).fontWeight(.heavy).multilineTextAlignment(.center).foregroundColor(.red)
                }.frame(width: 165.0)
            }
        }
        
        //.background(Color.blue) ==> probably only takes up space of child elements
        
        // end of overall Stack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
