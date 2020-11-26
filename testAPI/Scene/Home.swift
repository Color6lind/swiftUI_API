import SwiftUI
import Alamofire
import Foundation

struct Home: View{
    @ObservedObject
    var model: ViewModel = .init()
    
    var body: some View {
        VStack {
            Button (action: {
                if self.model.isAuth == true {
                    self.model.signout()
                }
                
            }) {
                Text("Back")
                    .font(.custom("Font", size: 42))
                    .foregroundColor(Color("ColorBG"))
            }
        }

    }
}

