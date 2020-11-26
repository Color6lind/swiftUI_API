import SwiftUI
import Alamofire

struct ContentView: View {
    @ObservedObject
    var model: ViewModel = .init()
    
    var body: some View {
        switch self.model.isActiveScene {
        case .signin:
             SignIn()
        case .signup:
             SignUp()
        case .home:
             Home()
        }
    }
}

