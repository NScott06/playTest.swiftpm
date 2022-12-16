import SwiftUI

struct ContentView: View {
    @State var myname:String = ""
    var body: some View {
        VStack {
            TextField("hello", text: $myname)
           Text("\(myname)")
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("James")
            Text("Hello")
        Text("James is not an idiot")
            
        }
    }
}
