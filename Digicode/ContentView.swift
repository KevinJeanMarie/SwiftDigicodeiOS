//
//  ContentView.swift
//  Digicode
//
//  Created by Les Prodiges on 29/03/2023.
//

import SwiftUI
import FirebaseAuth
import FirebaseAuthCombineSwift

struct ContentView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle.fill.badge.plus")
                .imageScale(.large)
                .font(.system(size: 50))                .foregroundColor(.accentColor)
            Text("Please login")
            
                TextField("Login", text: $email)
                .font(Font.system(size:18))
                .padding(8)
                .background(RoundedRectangle(cornerRadius:50).fill(Color.blue))
                .padding(5)
                .offset(x:8, y: 10)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
            
                SecureField("Password", text : $password)
                .font(Font.system(size:18))
                .padding(8)
                .background(RoundedRectangle(cornerRadius:50).fill(Color.blue))
                .padding(5)
                .offset(x:8, y: 10)
            
            Button("Login", action: {
                print("Login")
            })
            .font(Font.system(size:25))
            .offset(y: 30)            }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
