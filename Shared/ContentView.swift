import SwiftUI

struct ContentView: View {
    @State
    var currentScene: ChangeScene = .step1
    
    var body: some View {
        ZStack {
            Color(.systemGray).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            switch self.currentScene {
            case .step1:
                MyStep1(currentScene: $currentScene)
            case .step2:
                MyStep2(currentScene: $currentScene)
            case .step3:
                MyStep3(currentScene: $currentScene)
            }
        }
    }
}

struct MyStep1: View {
    @Binding
    var currentScene: ChangeScene
    
    var body: some View {
        VStack {
            Text("step1")
            Button(action: {
                self.currentScene = .step2
            }) {
                Text("Go to step 2")
            }
        }
    }
}

struct MyStep2: View {
    @Binding
    var currentScene: ChangeScene
    
    var body: some View {
        VStack {
            Text("step2")
            Button(action: {
                self.currentScene = .step3
            }) {
                Text("Go to step 3")
            }
        }
    }
}

struct MyStep3: View {
    @Binding
    var currentScene: ChangeScene
    
    var body: some View {
        VStack {
            Text("step3")
            Button(action: {
                self.currentScene = .step1
            }) {
                Text("Go to step 1")
            }
        }
    }
}

enum ChangeScene {
    case step1, step2, step3
}
