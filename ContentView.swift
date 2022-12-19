import SwiftUI

struct ContentView: View {
    //MARK: Variables
    @State var backDegree = 0.0
    @State var frontDegree = -90.0
    @State var isFlipped = false

    let width : CGFloat = 200
    let height : CGFloat = 250
    let durationAndDelay : CGFloat = 0.3

    //MARK: Flip Card Function
    func flipCard () {
        isFlipped = !isFlipped
        if isFlipped {
            withAnimation(.linear(duration: durationAndDelay)) {
                backDegree = 90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                frontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: durationAndDelay)) {
                frontDegree = -90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                backDegree = 0
            }
        }
    }
    //MARK: View Body
    var body: some View {
        ZStack{
        }
    }
}
