//
//  ContentView.swift
//  Digicode
//
//  Created by Etienne Vautherin on 29/03/2023.
//
import SwiftUI
import FirebaseAuth
import FirebaseAuthCombineSwift

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State var showingSheet = false
    
    var body: some View {
        NavigationStack {
        VStack {
            List(viewModel.codes) { code in
                //Text(code.name)
                NavigationLink(code.name, value: code)
            }
            Button("Sign Out", action: ViewModel.signOut)
        }
        .navigationDestination(for: Code.self) { code in
            CodeView(code: code)
        }
        .sheet(isPresented: $showingSheet) {
            SignInView()
        }
        .onReceive(viewModel.$connected) { connected in
            print("connected received")
            showingSheet = !connected
        }
     }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
