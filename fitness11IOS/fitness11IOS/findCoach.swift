//
//  findCoach.swift
//  fitness11IOS
//
//  Created by Manpreet Kaur on 2021-12-23.
//
import SwiftUI

struct findCoach: View {
    @State private var email:String="";
    var body: some View {
       
    
        
        VStack{
            HStack{
                Text("Find Coaches")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    
                Spacer()
                
                    Image("muscle")
                    .resizable()
                    .frame(width:50.0,height: 50.0)
            }
            
            .padding(.horizontal)
        Image("trainer").resizable().frame(width: 180, height: 200)
            .clipShape(Circle())
                    .shadow(radius:0)
                    .overlay(Circle().stroke(Color.gray,lineWidth:3))
            
            Text("Name : St.Thomas"   )
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center).frame(height: 30.0)
                
            Text("Experience : 4yrs")
                .font(.title)
                .fontWeight(.bold)
                .frame(height: 30.0)
            Text("Specialst : Yoga")
                .font(.title)
                .fontWeight(.bold)
                .frame(height: 30.0)
            Text("Age : 40yrs")
                .font(.title)
                .fontWeight(.bold)
                .frame(height:30)

            TextField("Description",
                      text:$email )
                .padding()
                .font(.largeTitle).frame(width: 400, height:200, alignment:.top)
                
                .background(Color.white).cornerRadius(50)
                .shadow(color: Color.black.opacity(0.1)
                        ,radius: 100, x:10.0, y:20.0)
            Spacer()
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Send mail")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding(.vertical)
                        .padding(.horizontal,60)
                        .clipShape(Capsule())
                        .background(Color.blue)
                        .cornerRadius(100)
                }
            }
                
        }
            
            
            
           
        }
        
        
    }


struct findCoach_Previews: PreviewProvider {
    static var previews: some View {
        findCoach()
    }
}

