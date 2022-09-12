//
//  ContentView.swift
//  cw4
//
//  Created by Nour Alhashash on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State  var enter : String = ""
    @State var iteams = ["cola","sandwich","chips","watermelon","avocado"]
    
    
    var body: some View {
        
        
        VStack{
            List(iteams, id: \.self){iteam in
                
                HStack{
                    Image(iteam)
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text(iteam)}
                
                
               // onTapGesture {
                //.onDelete(perform: deleteItems) }
               // array.
        }
            
            
            
            
            
            
            HStack{
                
                Button(action:{iteams.append(enter)}){Text("Add")}
                    .background(Color.green)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .font(.largeTitle)
                TextField("Enter your iteam", text: $enter)
                    
                
                
                Button(action:{
                    iteams.append(iteams.randomElement() ?? "")
                    
                }) {
                    Text("?")
                    
                }
                    .background(Color.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                
                Button(action:{iteams.remove(at: 5)}){Text("Remove")}
                    .background(Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                 
            
                
                Button(action:{iteams.remove(at: 5)}){Text("selectToremove")}
                    .background(Color.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                
                  //  Button
              //  onTapGesture {
                    //(action:{iteams.remove}){Text("selectremove")}
             //   }
                
                
                
                
            }
            
            
        }
            
        }
        
        
        
        
        
        
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
