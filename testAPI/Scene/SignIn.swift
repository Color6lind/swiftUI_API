import SwiftUI
import Alamofire
import Foundation

struct SignIn: View {
    @EnvironmentObject
    private var model: ViewModel
    
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
                    .padding(.bottom, 30)
                
                
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
                
                if self.model.isAuth {
                    HStack {
                        Image("Letter")
                            .padding(.leading, 12)
                            .padding(.trailing, 4)
                        Divider()
                        TextField("Email", text: self.$model.email)
                            .foregroundColor(.gray)
                    }
                    .frame(height: 50)
                    .background(Color.white)
                    .cornerRadius(30)
                    .padding(.horizontal, 31)
                    .padding(.top, 5)
                }
                
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
                
                if self.model.isAuth {
                    HStack {
                        Image("pass")
                            .padding(.leading, 15)
                            .padding(.trailing, 5)
                        Divider()
                        SecureField("Repit password", text: self.$model.passwordRepit)
                            .foregroundColor(.gray)
                    }
                    .frame(height: 50)
                    .background(Color.white)
                    .cornerRadius(30)
                    .padding(.horizontal, 31)
                    .padding(.top, 5)
                    .padding(.bottom, 40)
                }
                
                if self.model.isAuth {
                    Button(action: {
                        self.model.mysignup()
                    }) {
                        Spacer()
                        Text("Sign Up")
                            .font(.custom("Font", size: 22))
                            .foregroundColor(Color("ColorText"))
                        Spacer()
                    }
                    .frame(height: 50)
                    .background(Color.white)
                    .cornerRadius(30)
                    .padding(.horizontal, 31)
                    
                    Spacer()
                    
                    Button (action: {
                        self.model.isAuth = false
                    }) {
                        Text("Back")
                            .font(.custom("Font", size: 16))
                            .foregroundColor(.white)
                            .underline()
                    }
                } else {
                    Button(action: {
                        self.model.mysignin()
                    }) {
                        Spacer()
                        Text("Sign In")
                            .font(.custom("Font", size: 22))
                            .foregroundColor(Color("ColorText"))
                            .alert(isPresented: self.$model.ErrorSignIn) {
                                Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
                            }
                        
                        Spacer()
                    }
                    .frame(height: 50)
                    .background(Color.white)
                    .cornerRadius(30)
                    .padding(.horizontal, 31)
                    .padding(.vertical)
                    .padding(.top, 30)
                    
                    Button (action: {
                        self.model.isAuth.toggle()
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
                
                
            }.animation(.easeInOut(duration: 1))
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
