//
//  AboutUs.swift
//  fitness11IOS
//
//  Created by jatinder kaur on 2021-12-23.
//

import SwiftUI

struct AboutUs: View {
    var body: some View {
       //NavigationView {
           VStack{
               Text("Our Team")
                   .bold()
                   .font(.largeTitle)
                   
               Text("'We are continously trying to improve our work to provide the user an awesome experience. Our goal is to give better and relevant result to our customers.'")
                   .padding(8)
                   .font(.subheadline)
                   .multilineTextAlignment(.leading)
               ScrollView(.horizontal, showsIndicators: false, content:{
                   HStack{
                       VStack{
                           Image("nature")
                               .resizable()
                               .clipShape(Circle())
                               .frame(width:120, height: 120)
                               .padding(10)
                           Text("2092193")
                           Text("Jatinder")
                           Text("I value a team environment because talking things out, leaning on each other, and working collaborately are so crucial to anyone's success.")
                               .fixedSize(horizontal: false, vertical: true)
                               .multilineTextAlignment(.center)
                               .padding()
                               .frame(width: 300, height: 200)
                               .background(RoundedRectangle(cornerRadius: 50).fill(Color.white).shadow(radius: 3))
                               .padding()
                       }
                       VStack{
                           Image("nature")
                               .resizable()
                               .clipShape(Circle())
                               .frame(width:120, height: 120)
                               .padding(10)
                           Text("2092039")
                           Text("Manpreet")
                           Text("I value a team environment because talking things out, leaning on each other, and working collaborately are so crucial to anyone's success.")
                               .fixedSize(horizontal: false, vertical: true)
                               .multilineTextAlignment(.center)
                               .padding()
                               .frame(width: 300, height: 200)
                               .background(RoundedRectangle(cornerRadius: 50).fill(Color.white).shadow(radius: 3))
                               .padding()
                       }
                       VStack{
                           Image("nature")
                               .resizable()
                               .clipShape(Circle())
                               .frame(width:120, height: 120)
                               .padding(10)
                           Text("2092933")
                           Text("Saipreethi")
                           Text("I value a team environment because talking things out, leaning on each other, and working collaborately are so crucial to anyone's success.")
                               .fixedSize(horizontal: false, vertical: true)
                               .multilineTextAlignment(.center)
                               .padding()
                               .frame(width: 300, height: 200)
                               .background(RoundedRectangle(cornerRadius: 50).fill(Color.white).shadow(radius: 3))
                               .padding()
                       }
                       VStack{
                           Image("nature")
                               .resizable()
                               .clipShape(Circle())
                               .frame(width:120, height: 120)
                               .padding(10)
                           Text("2092164")
                           Text("Praveen")
                           Text("I value a team environment because talking things out, leaning on each other, and working collaborately are so crucial to anyone's success.")
                               .fixedSize(horizontal: false, vertical: true)
                               .multilineTextAlignment(.center)
                               .padding()
                               .frame(width: 300, height: 200)
                               .background(RoundedRectangle(cornerRadius: 50).fill(Color.white).shadow(radius: 3))
                               .padding()
                       }
                   }
               } )
          // }
            //.navigationTitle("Our Team")
            .lineSpacing(4)
       }

    }
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs().previewDevice("iPhone 13 Pro")
    }
}
    

