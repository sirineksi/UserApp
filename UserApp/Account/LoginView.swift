//
//  LoginView.swift
//  UserApp
//
//  Created by ceksi on 15.08.2023.
//

import SwiftUI

struct LoginView: View {
    @Binding var username: String
    @Binding var password: String
    @Binding var rememberMe: Bool
    @Binding var isLoggedIn : Bool
    @Binding var isLoginError: Bool
    
    var body: some View {
        VStack{
            TextField("Kullanıcı Adı", text: $username).padding()
            SecureField("Şifre",text: $password).padding()
            Toggle("Beni Hatırla", isOn: $rememberMe).padding()
            Button("Giriş Yap") {
                if username == "Melis" && password == "12345" {
                    isLoggedIn = true
                }else {
                    isLoginError = true
                }
            }.padding()
        }
        .alert(isPresented: $isLoginError) {
            Alert(title: Text("Hata"), message: Text("Kullanıcı Adı veya Şifre Hatalı"))
        }
    }
}



