//import SwiftUI
//import Alamofire
//import Foundation
//
//struct SignUp: View {
//    @EnvironmentObject
//    private var model: ViewModel
//
//    var body: some View {
//        ZStack {
//            Color("ColorBG").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//                .opacity(0.69)
//
//            VStack {
//                Image("logo")
//                Text("Home\nGym")
//                    .padding(.top, -50)
//                    .font(.custom("Font", size: 46))
//                    .foregroundColor(.white)
//                    .multilineTextAlignment(.center)
//                    .padding(.bottom)
//
//                Spacer()
//
////                VStack {
////                    HStack {
////                        Image("Person")
////                            .padding(.leading, 15)
////                            .padding(.trailing, 5)
////                        Divider()
////                        TextField("Name", text: self.$model.username)
////                            .foregroundColor(.gray)
////                    }
////                    .frame(height: 50)
////                    .background(Color.white)
////                    .cornerRadius(30)
////                    .padding(.horizontal, 31)
////
////                    HStack {
////                        Image("Letter")
////                            .padding(.leading, 12)
////                            .padding(.trailing, 4)
////                        Divider()
////                        TextField("Email", text: self.$model.email)
////                            .foregroundColor(.gray)
////                    }
////                    .frame(height: 50)
////                    .background(Color.white)
////                    .cornerRadius(30)
////                    .padding(.horizontal, 31)
////                    .padding(.top, 5)
////
////                    HStack {
////                        Image("pass")
////                            .padding(.leading, 15)
////                            .padding(.trailing, 5)
////                        Divider()
////                        TextField("Password", text: self.$model.password)
////                            .foregroundColor(.gray)
////                    }
////                    .frame(height: 50)
////                    .background(Color.white)
////                    .cornerRadius(30)
////                    .padding(.horizontal, 31)
////                    .padding(.top, 5)
////
////                    HStack {
////                        Image("pass")
////                            .padding(.leading, 15)
////                            .padding(.trailing, 5)
////                        Divider()
////                        TextField("Repit password", text: self.$model.passwordRepit)
////                            .foregroundColor(.gray)
////                    }
////                    .frame(height: 50)
////                    .background(Color.white)
////                    .cornerRadius(30)
////                    .padding(.horizontal, 31)
////                    .padding(.top, 5)
////                    .padding(.bottom, 40)
////                }
////
////                Spacer()
////
////                Button(action: {
////                    self.model.mysignup()
////                }) {
////                    Spacer()
////                    Text("Sign Up")
////                        .font(.custom("Font", size: 22))
////                        .foregroundColor(Color("ColorText"))
////                    Spacer()
////                }
////                .frame(height: 50)
////                .background(Color.white)
////                .cornerRadius(30)
////                .padding(.horizontal, 31)
////
////                Spacer()
////
////                Button (action: {
////                    self.model.isActiveScene = .signin
////                }) {
////                    Text("Back")
////                        .font(.custom("Font", size: 16))
////                        .foregroundColor(.white)
////                        .underline()
////                }
//            }
//        }
//    }
//}
