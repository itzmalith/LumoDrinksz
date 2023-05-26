//
//  Login.swift
//  LumoDrin
//
//  Created by Malith Lekamge on 2023-05-26.
//

import SwiftUI

struct Login: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.custom(FontsManager.Aclonica.regular, size: 35))
                .fontWeight(.black)
                .foregroundColor(Color(hex: "D18A00"))
                .offset(y:-130)
            
            TextField("Username", text: $username)
                .padding()
                .autocapitalization(.none)
                .background(Color(.brown).opacity(0.7))
                .cornerRadius(10)
                .padding(.vertical)
                .padding(.vertical)
                .foregroundColor(.white)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.brown).opacity(0.7))
                .cornerRadius(10)
                .padding(.vertical)
                .foregroundColor(.white)
            
            Button(action: {
                // Simulating login functionality
                isLoggedIn = true
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .frame(width: 202, height: 49)
                    .font(.custom(FontsManager.Akshar.regular, size: 16))
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(hex: "#885A00")) // Set the background color using
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1)
                                    .shadow(color: Color.black.opacity(0.5), radius: 4, x: 0, y: 2)
                            )
                    )
                    .offset(y: 100)
            }
            .padding()
            
            if isLoggedIn {
                Text("Logged in as \(username)")
                    .font(.headline)
                    .padding()
            }
        }
        .padding(22)
        .background(
            Image("backimage1")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        
        
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
