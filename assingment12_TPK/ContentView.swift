//
//  ContentView.swift
//  assingment12_TPK
//
//  Created by Tanner Parker on 11/10/20.
//

import SwiftUI

struct ContentView: View {
    
    //var image: Image
    
    var body: some View {
        
        ZStack {
            
            Button(action: ) {
                
                func rollDice(){
                    //do cool stuff here
                    print("We Rollin' Dice!")
                    
                    let rolledNumber = Int.random(in: 1...20)
                    let imageName = "d\(rolledNumber)"
                    
                    diceImageView.image = UIImage(named: imageName)
                    
                    audioPlayerRoll.play()
                    
                    if(imageName == "d1"){
                        criticalLabel.text = "Critical Miss!"
                        audioPlayerLose.play()
                  
                    }else if(imageName == "d20"){
                        criticalLabel.text = "Critical Hit!"
                        audioPlayerWin.play()

                    }else{
                        criticalLabel.text = ""
                    }
                }
            }
        
            VStack (alignment: .center) {
                
                Text("Tap or Shake to Roll")
                    .font(.title)
                    .fontWeight(.bold)
                
                Image("d1")
                    .frame(width: 250.0, height: 250.0)
                    .padding(.horizontal)
                    .padding(.vertical)
                
                Text("Stuff here")
                    .font(.subheadline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
