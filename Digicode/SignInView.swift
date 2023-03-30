//
//  SignInView.swift
//  Digicode
//
//  Created by Les Prodiges on 30/03/2023.
//

import SwiftUI
import FirebaseAuth
import FirebaseAuthCombineSwift

struct SignInView: View {
    //@Binding var connected: Bool
    
    @State var email = ""
    @State var password = ""
   
    
    var body: some View {
        VStack {
            //styles
            Image(systemName: "person.crop.circle.fill.badge.plus")
                .imageScale(.large)
                .font(.system(size: 50))                .foregroundColor(.accentColor)
            Text("Please login")
            //
            
            
                TextField("e-mail", text: $email)
            //styles
                .font(Font.system(size:18))
                .padding(8)
                .background(RoundedRectangle(cornerRadius:50).fill(Color.blue))
                .padding(5)
                .offset(x:8, y: 10)
            //
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
        
            
                SecureField("Password", text : $password)
            //styles
                .font(Font.system(size:18))
                .padding(8)
                .background(RoundedRectangle(cornerRadius:50).fill(Color.blue))
                .padding(5)
                .offset(x:8, y: 10)
            //
            
            Button("Login", action: {
                print("e-mail: \(email), password: \(password)")
                
                Auth.auth().signIn(withEmail: email, password: password) {(/*result*/_, error) in
                    if let error = error {
                        print("Error: \(error)")
                        return
                    }
//                    if let result = result {
//                        //connected = true
//                        print("\(result.user.uid)")
//                    }
                }
            })
            
            //styles
            .font(Font.system(size:25))
            .offset(y: 30)
            //
        }
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
