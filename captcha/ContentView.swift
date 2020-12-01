import SwiftUI
import AVKit

struct ContentView: View {
    @State var alphavite = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    @State var randomElements: [String.Element] = []
    @State var randomArray: [String.Element] = []
    @State var arrayStr: String = ""
    
    @State var captcha: String = ""
    @State var myAnswere: String = ""
    
    @State var isError: Bool = false
    @State var isScene: Bool = false
    @State var randomElem: Double = Double.random(in: -40...40)
    
    var body: some View {
        
        ZStack {
            Color(.systemGray6).edgesIgnoringSafeArea(.all)
            
            if self.isScene {
                VStack {
                    Text("hello")
                    Button(action: {
                        self.isScene = false
                    }) {
                        Text("Back")
                    }
                }
            } else {
                VStack {
                    Spacer()
                    Text("Enter text")
                        .font(.custom("ND Astroneer", size: 20))
                    Spacer()
                    HStack {
                        ForEach (randomElements, id:\.self) { item in
                            Text("\(String(item))")
                                .rotationEffect(.degrees(self.randomElem))
                        }
                    }
                    Form {
                        TextField("", text: self.$myAnswere)
                        Button(action: {
                            if self.myAnswere == self.arrayStr {
                                self.isScene = true
                            } else {
                                self.isError = true
                                self.randomElements = alphavite.shuffled().dropLast(22)
                                self.arrayStr = String(randomElements)
                                self.randomElem = Double.random(in: -40...40)
                            }
                            
                        }) {
                            Text("Проверить")
                        }
                        .alert(isPresented: self.$isError, content: {
                            Alert(title: Text("Неверная капча"), message: Text("Попробуйте снова"), dismissButton: .default(Text("Ok"), action: {
                            }))
                        })
                    }
                    Spacer()
                }
            }
        }
        .onAppear{
            self.randomElements = alphavite.shuffled().dropLast(22)
            self.arrayStr = String(randomElements)
            
            print(randomElements)
        }
    }
}

struct Next: View {
    var body: some View {
        VStack {
            Text("fsdf")
        }.navigationTitle("Back")
    }
}
