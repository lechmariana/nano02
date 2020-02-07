import SwiftUI
import CoreLocation

public struct LandMark : Identifiable, Hashable, Codable {
    public var id: String
    var image01: String
    var good: Bool
    var description: String
    
    /*var locationCoordinate: CLLocationCoordinate2D {
          CLLocationCoordinate2D(
              latitude: coordinates.latitude,
              longitude: coordinates.longitude)
      }*/
    
}

class Model : ObservableObject {
    @Published var photos = [LandMark (id: "verao", image01: "imagem01", good: true, description: "testes")]
}
