import SwiftUI
import PlaygroundSupport

struct MyViewController: View {
    var body: some View {
        
        GeometryReader { geometry in
        NavigationView {
            HStack(){
                
                //menu lateral
                VStack {
                    Spacer()
                    
                    //button
                    Rectangle()
                        .fill(Color.red)
                        .frame(height: geometry.size.height / 4)

                    Spacer()

                    Text("Reset")
                        .frame(alignment: .bottom)
                        .foregroundColor(.white)
                }.frame(width: geometry.size.width / 9)
                    .background(Color.black)
                    .edgesIgnoringSafeArea(.all)

                //mapa
               MapView()
                .edgesIgnoringSafeArea(.all)

            
            }
        } .background(Color.black)
            
    }
    }
}


//kjnkjn
////



/* Método 01
let vc = UIHostingController(rootView: MyViewController())
//vc.preferredContentSize = CGSize(width:1366, height:1024)
PlaygroundPage.current.setLiveView(vc)
*/

PlaygroundPage.current.liveView = UIHostingController(rootView: MyViewController())
