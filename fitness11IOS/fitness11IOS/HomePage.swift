//
//  HomePage.swift
//  fitnessapp

//
//  Created by preethi on 2021-12-22.
//  Copyright © 2021 preethi. All rights reserved.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        VStack{
            //title//
            VStack{
                Spacer()
                HStack{
                    Text("HOMEPAGE")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Spacer()
                    
                        Image("home")
                        .resizable()
                        .frame(width:60,height: 60.0)
                }
                .background(Color.white)
                                HStack{
                                    
                    VStack{
                        Image("workout-machine (1)")
                       .resizable().aspectRatio(contentMode:.fit)
                        
                        Text("EXERCISES")
                            .font(.title)
                            .fontWeight(.bold)
                        
                }
                    .background(Color.white)
                    VStack{
                       
                        Image("calculator (1)").resizable().aspectRatio(contentMode:.fit)
                        
                        Text(" BMI ")
                            .font(.title)
                            .fontWeight(.bold)
                }

                    
                
                .background(Color.white)
            }
                HStack{
                    VStack{
                        
                        Image("coach")
                            .resizable().aspectRatio(contentMode:.fit)
                        
                        Text("TRAINER")
                            .font(.title)
                            .fontWeight(.bold)
                }
                    .background(Color.white)
                    VStack{
                       
                        
                            Image("review")

                                .resizable().aspectRatio(contentMode:.fit)
                        
                        
                        Text("FEEDBACK")
                            .font(.title)
                            .fontWeight(.bold)
                }
                    .background(Color.white)
                    

                    
            }
                HStack{
                    VStack{
                        
                        Image("man")
                            .resizable().frame(width:200, height:200)
                            
                        Text("ABOUT US")
                            .font(.title)
                            .fontWeight(.bold)
                }
                    .background(Color.white)
                    
                    
                    

                    
            }
                Spacer()
                
                
                
        }
            
            .background(Color.white)
            .padding()
           
    }
        .edgesIgnoringSafeArea(.all)
    
        
    
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
    HomePage()
    }
}
}


