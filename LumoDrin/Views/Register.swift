//
//  Register.swift
//  LumoDrin
//
//  Created by Malith Lekamge on 2023-05-26.
//

import SwiftUI

struct Register: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var isRegistered: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Text("Register")
                    .font(.custom(FontsManager.Aclonica.regular, size: 35))
                    .fontWeight(.black)
                    .foregroundColor(Color(hex: "D18A00"))
                    .offset(y:-100)
                
                TextField("Username", text: $username)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(.brown).opacity(0.7))
                    .cornerRadius(10)
                    .padding(.vertical)
                
                SecureField("Password", text: $password)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(.brown).opacity(0.7))
                    .cornerRadius(10)
                    .padding(.vertical)
                
                SecureField("Confirm Password", text: $confirmPassword)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(.brown).opacity(0.7))
                    .cornerRadius(10)
                    .padding(.vertical)
                
                Button(action: {
                    // Validate registration details
                    if password == confirmPassword {
                        // Simulating registration functionality
                        isRegistered = true
                    } else {
                        // Display an error message if passwords don't match
                        // You can implement your own error handling logic here
                        print("Passwords do not match")
                    }
                }) {
                    Text("Register")
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
                        .offset(y: 70)
                }
                .padding()
                
                if isRegistered {
                    Text("Registration successful for \(username)")
                        .font(.headline)
                        .padding()
                }
            }
        
            .padding(22)
            
            
            
        }
        .background(
            Image("backimage1")
                .resizable()
                .aspectRatio(contentMode: .fill)
    )
    }
}
struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
