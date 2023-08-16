//
//  WelcomeView.swift
//  UserApp
//
//  Created by ceksi on 15.08.2023.
//

import SwiftUI

struct WelcomeView: View {
    @State private var rememberedUsername = UserDefaults.standard.string(forKey: "username")
    @State private var rememberedPassword = UserDefaults.standard.string(forKey: "password")
    @State private var rememberedRememberMe = UserDefaults.standard.string(forKey: "rememberMe")
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        VStack{
            Text("Hoşgeldiniz, \(rememberedUsername ?? "" )!")
                .font(.title)
                .padding()
            if (rememberedRememberMe != nil) {
                Text("Beni hatırladınız!")
                    .foregroundColor(.green).padding()
            }else {
                Text("Beni hatırlamadınız!")
                    .foregroundColor(.green).padding()
            }
            Text("Kullanıcı Adı: \(rememberedUsername ?? "")").padding()
            Text("Şifre: \(rememberedPassword ?? "")").padding()
            
            
            Button("Çıkış Yap") {
                UserDefaults.standard.removeObject(forKey: "username")
                UserDefaults.standard.removeObject(forKey: "password")
                UserDefaults.standard.synchronize()
                isLoggedIn = false
            }.padding()
        }
    }
}


