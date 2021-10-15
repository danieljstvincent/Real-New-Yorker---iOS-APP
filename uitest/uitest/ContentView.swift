//
//  ContentView.swift
//  uitest
//
//  Created by Daniel St Vincent on 10/15/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack() {
            

           
            
            Image("mthumb")
                .resizable()
                .aspectRatio(contentMode:.fit)
            
            ZStack() {
                Let snowman = UIImage.gifImageWithName("snowman-11")
                }
            
        HStack() {
            Spacer()
                Text("Merry")
            Spacer()
                Text("Christmas")
            Spacer()
                Text("To")
            Spacer()
                Text("You")
            Spacer()
            }
      
        }
        
      
//        Text("Daniel St. Vincent")
//            .foregroundColor(Color.white)
//            .accentColor(Color.white)
//            .padding(.all)
//            .background(Color.green)
//            .cornerRadius(15.0)
//            .padding(.all).background(Color.blue).cornerRadius(15.0)
           
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
