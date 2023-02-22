//
//  ContentView.swift
//  Motivati
//
//  Created by Reşat Kut on 22.02.2023.
//

import SwiftUI
import WidgetKit


struct ContentView: View {
    @AppStorage("motivation",store: UserDefaults(suiteName: "group.motivati")) private var motivation : String = ""
    
    @State private var myMoti = "Write To Motivation.."

    @State private var isAlert = false
    @State private var isErrorAlert = false

    var body: some View {
        
        VStack{
            Text("My Motivation")
                .bold()
                .font(.largeTitle)
            
            Spacer()
            
            MotiNew(myMoti: $myMoti)
                .onAppear{
                    motivation = myMoti
                }
            
            
            //Spacer()
            
            HStack{
                Button(action: {
                    
                    clear()
                }){
                    Text("New Motivation")
                        .bold()
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 180,height: 50)
                        .background(Color.indigo)
                        .cornerRadius(15)
                        .padding()
                }
                .alert(isPresented: $isErrorAlert) {
                    Alert(title: Text("Error"),message: Text("Motivation box is empty"))
                }
                
                Spacer()
                
                Button(action: {
                    if myMoti.isEmpty{
                        isErrorAlert = true
                    }else{
                        isAlert = true
                        motiSave(moti: myMoti)
                    }
                    
                }){
                    Text("Save")
                        .bold()
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 140,height: 50)
                        .background(Color.indigo)
                        .cornerRadius(15)
                        .padding()
                    
                }
                .alert(isPresented: $isAlert) {
                    Alert(title: Text("Succesfull"),message: Text("Your Motivation Was Saved!"))
                }
            }
            Spacer()
        }
        .padding()
       
    }
    
    func motiSave(moti:String){
        WidgetCenter.shared.reloadAllTimelines()
        motivation = moti
        
    }
    
    func clear(){
        myMoti = "Write To Motivation.."
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
