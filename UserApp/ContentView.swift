//
//  ContentView.swift
//  UserApp
//
//  Created by ceksi on 15.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var username = UserDefaults.standard.string(forKey: "username") ?? ""
    @State private var password = UserDefaults.standard.string(forKey: "password") ?? ""
    @State private var rememberMe = false
    @State private var isLoggedIn = false
    @State private var isLoginError = false
    @State private var showRegisterView = false
    
    
    var body: some View {
        if isLoggedIn {
            WelcomeView(username: username, password: password, rememberMe: rememberMe, isLoggedIn: $isLoggedIn )
        }else if showRegisterView {
            RegisterView()
            
        }else {
            LoginView(username: $username, password: $password, rememberMe: $rememberMe, isLoggedIn: $isLoggedIn, isLoginError: $isLoginError)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

