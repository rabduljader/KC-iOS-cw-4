//
//  ContentView.swift
//  myplayground4
//
//  Created by Rasheed Abduljader on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var mark = ""
    
    @State var gradee = ""
    
    var body: some View {
        
        
        ZStack{
            Color.orange.opacity(0.9)
                .ignoresSafeArea()
            
            VStack{
                
                Text("حاسبة الدرجات")
                    .font(.system(size: 26 , design: .rounded))
                    .font(.largeTitle)
                    .padding(29)
                    .foregroundColor(.black)
                    .padding(0.1)
                
                Image("calpng")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
                TextField("اكتب درجتك",text:$mark)
                    .background(.gray)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Text("احسب درجتي")
                    .frame(width: 200, height: 40)
                    .background(.green.opacity(0.6))
                    .cornerRadius(15)
                    .onTapGesture{
                        
                        if(Double(mark) ?? 0) >= 90 {
                            
                            gradee = "امتياز"
                            
                        }
                        
                        else if (Double(mark) ?? 0) >= 80 {  gradee = "جيد جداً"
                            
                        }
                        
                    }
                
                Text("لقد حصلت على درجة")
                
                
                
                Spacer()
                
                Text(gradee)
                
                
            }.padding()
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
