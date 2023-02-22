//
//  MotiNew.swift
//  Motivati
//
//  Created by Reşat Kut on 22.02.2023.
//

import SwiftUI

struct MotiNew: View {
    
    @Binding var myMoti : String
    
    var body: some View {
        VStack{
            TextEditor(text: $myMoti)
                .textFieldStyle(PlainTextFieldStyle())
                .scrollContentBackground(.hidden)
                .frame(width: 320,height: 300)
                .bold()
                .padding()
                .font(.title2)
                .background(.yellow)
                .cornerRadius(25)
        }
    }
}

/*struct MotiNew_Previews: PreviewProvider {
    static var previews: some View {
        MotiNew()
    }
}*/
