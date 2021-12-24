//
//  bmi_UI.swift
//  fitness11IOS
//
//  Created by jatinder kaur on 2021-12-23.
//

import SwiftUI
struct RadioButtonField: View {

    @Environment(\.colorScheme) var colorScheme

    let id: String
    let label: String
    let callback: (String)->()
    let size: CGFloat
    let color: Color
    let isMarked: Bool
    let textSize: CGFloat

    init(
        id: String,
        label: String,
        callback: @escaping (String)->(),
        size: CGFloat = 20,
        isMarked: Bool = false,
        color: Color = Color.black,
        textSize: CGFloat = 14
    )
        
    {
        self.id = id
        self.label = label
        self.size = size
        self.color = color
        self.textSize = textSize
        self.isMarked = isMarked
        self.callback = callback
    }
    
    
    var body: some View {
            Button(action:{
                self.callback(self.id)
            }) {
                HStack(alignment: .center, spacing: 10) {
                    Image(systemName: self.isMarked ? "largecircle.fill.circle" : "circle")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: self.size, height: self.size)
                    Text(label)
                        .font(Font.system(size: textSize))
                    Spacer()
                }.foregroundColor(self.color)
            }
            .foregroundColor(Color.white)
        }
}

enum Gender: String{
    case male = "Male"
    case female = "Female"
}

struct RadioButtonGroup : View {
    let callback:(String) -> ()
    @State var selectedID : String = ""
    
    var body: some View {
        HStack{
            radioMaleMajority
            radioFemaleMajority
        }
    }
    
    var radioMaleMajority : some View{
        RadioButtonField(
            id: Gender.male.rawValue,
            label: Gender.male.rawValue,
            callback: radioGroupCallBack,
            isMarked: selectedID == Gender.male.rawValue ? true : false
            )
    }
    
    var radioFemaleMajority : some View{
        RadioButtonField(
            id: Gender.female.rawValue,
            label: Gender.female.rawValue,
            callback: radioGroupCallBack,
            isMarked: selectedID == Gender.female.rawValue ? true : false
            )
    }
    
    
    func radioGroupCallBack(id : String){
        selectedID = id
        callback(id)
    }
    
    
}

//....................

struct bmi_UI: View {
    
    @State private var height: String = ""
        @State private var weight: String = ""
    
    var body: some View {
        VStack{
            Text("Calculate your BMI")
                .bold()
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
            Text("Your Result")
                .bold()
                .font(.largeTitle)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: 350, height: 150)
                .background(Rectangle().fill(Color.white).shadow(radius: 3))
                .padding()
                TextField("Enter your height", text: $height)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(15)
                            TextField("Enter your weight", text: $weight)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                . padding(15)
            
            //..................
            HStack{
                Text("Gender")
                    .font(.headline)
                    .bold()
                    .padding(15)
                RadioButtonGroup.init(callback: {
                    selected in
                    print("selected gender is \(selected)")
                })
            }
            //..................
            
            Button {
                
            } label: {
                Text("CALCULATE")
                    .padding(20)
                    .foregroundColor(Color.white)
            }
            .contentShape(Rectangle())
            .background(Color.black)
            .padding(30)
            
        }
        
    }
}

struct bmi_UI_Previews: PreviewProvider {
    static var previews: some View {
        bmi_UI()
    }
}
