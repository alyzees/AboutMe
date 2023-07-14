//
//  ContentView.swift
//  AboutMe
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI
// Hey this is Roni! I was able to accept your invite and making a change on your project, I really don't understand why UGHHH so sorry
struct ContentView: View {
    
    @State private var darkMegenta = Color(hue: 0.843, saturation: 0.778, brightness: 0.423)
    @State private var aboutMeText = ""
    
    var body: some View {
        ZStack{
            Color(hue: 0.778, saturation: 0.319, brightness: 0.94).ignoresSafeArea()
            
            ScrollView{
                
                VStack{
                    ZStack(alignment:.center){
                        
                        Image("alyzee").resizable().aspectRatio(contentMode: .fit)
                            .overlay(
                                Color(.black).opacity(0.3)
                            )
                        
                        VStack (alignment: .center, spacing: 10.0){
                            Spacer().frame(height: 150)
                            Text("all about...").font(.title).multilineTextAlignment(.center).foregroundColor(.white).fontWeight(.bold)
                            Text("Alyzee Sosa").font(.largeTitle).fontWeight(.heavy).multilineTextAlignment(.center).foregroundColor(darkMegenta)
                        }.frame(maxWidth: .infinity)
                        // end of text
                        
                        
                    } // end of image intro
                    
                    Button("Click here!"){
                        if (aboutMeText.count < 1){
                            aboutMeText = "I am an upcoming college freshman, and I'm hoping to major in Computer Science and Philosophy! \n\nI listen to all sorts of music, literally any genre. Some of my favorite artists are Mitski, Kali Uchis, Frank Ocean, Selena, and Tyler the Creator. \n\nI'm a born and raised Angelino, and I love California, everything from the never-ending sunshine to the beautiful mountains just an two hour drive away."
                        }
                        else{
                            aboutMeText = ""
                        }
                        
                    }.buttonStyle(.borderedProminent).font(.title).tint(.white).foregroundColor(darkMegenta).cornerRadius(20).overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.purple, lineWidth: 5)
                        //.border(darkMegenta, width:5.0)
                    )
                    
                    //ScrollView{
                    Text(aboutMeText).multilineTextAlignment(.center).font(.system(size: 18)).padding(.all, 20.0).fontWeight(.heavy).foregroundColor(.white)
                    //}.frame(height: 250).padding(.all, 20.0)
                }
                
            }
            
        } // end of overall ZSTack //.background(Color.blue) ==> probably only takes up space of child elements
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
