//
//  ContentView.swift
//  Learing2
//
//  Created by Anand Narayan on 2020-10-11.
//  Copyright © 2020 Anand Narayan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isHearted = false
    @State private var numHearts = 99
    @State private var happyHeartMessage = "You like me...you really like me!"
    @State private var sadHeartMessage = "No one likes me?"
    
    var body: some View {
    
        VStack{
        Image("venice")
            .resizable()
            .cornerRadius(30)
            .padding()
        
        Spacer()
            HStack{
                Button(action: {
                    self.isHearted.toggle()
                    if self.isHearted {
                        self.numHearts += 1
                    }
                    else {
                        self.numHearts -= 1
                    }
                    
                }) {
                    if (isHearted) {
                        Image(systemName: "heart.fill")
                    }
                    else {
                        Image(systemName: "heart")
                    }
                }
                Text(String(self.numHearts))
            }.font(.largeTitle).foregroundColor(.purple)


        
        Spacer()
            if (self.isHearted) {
                Text(self.happyHeartMessage)
                .fontWeight(.bold)
                .foregroundColor(.green)
            }
            else {
                Text(self.sadHeartMessage)
                .fontWeight(.ultraLight)
                .foregroundColor(.orange)
            }
            
            Spacer()
            Image(systemName: "mic.circle.fill")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
