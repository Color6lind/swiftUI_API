import SwiftUI
import Alamofire
import Foundation

struct Home: View{
    @EnvironmentObject
    private var model: ViewModel
    
    var body: some View {
        VStack {
            Button (action: {
                if self.model.isAuth == true {
                    self.model.mysignout()
                }
                self.model.isAuth = false
                self.model.isActiveScene = .authScene
            }) {
                Text("Back")
                    .font(.custom("ND Astroneer", size: 42))
                    .foregroundColor(Color("ColorBG"))
            }
        }

    }
}

