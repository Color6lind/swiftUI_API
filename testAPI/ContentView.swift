import SwiftUI
import Alamofire
import Combine


struct ContentView: View {
    @ObservedObject
    private var model: ViewModel = .init()
    
    var body: some View {
        
        VStack {
            switch self.model.isActiveScene {
            case .authScene:
                SignIn()
                    .environmentObject(self.model)
            case .home:
                Home()
                    .environmentObject(self.model)
            }
        }   
    }
}
