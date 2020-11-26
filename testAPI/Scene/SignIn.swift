import SwiftUI
import Alamofire
import Foundation

struct SignIn: View {
    @ObservedObject
    var model: ViewModel = .init()
    
    var body: some View {
        ZStack {
            Color("ColorBG").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .opacity(0.69)
            VStack {
                Spacer()
                
                Image("logo")
                Text("Home\nGym")
                    .padding(.top, -50)
                    .font(.custom("ND Astoneer", size: 50))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                VStack {
                    HStack {
                        Image("Person")
                            .padding(.leading, 15)
                            .padding(.trailing, 5)
                        Divider()
                        TextField("Ivanov", text: self.$model.username)
                            .foregroundColor(.gray)
                    }
                    .frame(height: 50)
                    .background(Color.white)
                    .cornerRadius(30)
                    .padding(.horizontal, 31)
                    
                    HStack {
                        Image("pass")
                            .padding(.leading, 15)
                            .padding(.trailing, 5)
                        Divider()
                        SecureField("••••••", text: self.$model.password)
                            .foregroundColor(.gray)
                    }
                    .frame(height: 50)
                    .background(Color.white)
                    .cornerRadius(30)
                    .padding(.horizontal, 31)
                    .padding(.top, 5)
                    .padding(.bottom, 30)
                }
                
                Button(action: {
                    self.model.signin()
                }) {
                    Spacer()
                    Text("Sign In")
                        .font(.custom("Font", size: 22))
                        .foregroundColor(Color("ColorText"))
                    Spacer()
                }
                .frame(height: 50)
                .background(Color.white)
                .cornerRadius(30)
                .padding(.horizontal, 31)
                .padding(.vertical)
                
                
                Button (action: {
                    self.model.isActiveScene = .signup
                }) {
                    Text("Sign Up")
                        .font(.custom("Font", size: 24))
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                Button (action: {
                    self.model.isActiveScene = .home
                }) {
                    Text("Skip")
                        .font(.custom("Font", size: 16))
                        .foregroundColor(.white)
                        .underline()
                }
            }
        }
    }
}
