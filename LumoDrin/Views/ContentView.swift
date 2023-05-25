//
//  ContentView.swift
//  LumoDrin
//
//  Created by Malith Lekamge on 2023-05-23.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer().frame(height: 10)
                
                Text("Hi there, welcome to")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hex: "BB9200"))
                
                Text("Lumo Drinks")
                    .font(.custom(FontsManager.Aclonica.regular, size: 35))
                    .fontWeight(.black)
                    .foregroundColor(Color(hex: "D18A00"))
                    .offset(y: 5)
                
                NavigationLink(destination: ProductPage()) {
                    Text("GET STARTED")
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
                        .offset(y: 470)
                }
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("backimage1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
        }
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}

struct FontsManager{
    struct Aclonica {
        static let regular = "Aclonica-Regular"
    }
    struct Akshar{
        static let regular = "Akshar-VariableFont_wght"
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
