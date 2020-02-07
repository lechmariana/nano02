import MapKit
import SwiftUI
import PlaygroundSupport

public struct MapView: UIViewRepresentable {
    public var locationManager = CLLocationManager()
    
    public func setupManager() {
      locationManager.desiredAccuracy = kCLLocationAccuracyBest
      locationManager.requestWhenInUseAuthorization()
      locationManager.requestAlwaysAuthorization()
    }
    
    public func makeUIView(context: Context) -> MKMapView {
       setupManager()
       let mapView = MKMapView(frame: UIScreen.main.bounds)
       mapView.showsUserLocation = true
       mapView.userTrackingMode = .follow
       return mapView
    }
    
    public init() {
        
    }
    
    public class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView
        
        init(_ parent: MapView) {
            self.parent = parent
        }
        
        public func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
            print(mapView.centerCoordinate)
        }
    }
    
    public func makeCoordinator() -> MapView.Coordinator {
           Coordinator(self)
    }
    
    
    //userlocation
  
       
    
   /* public func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        
        //atualizar o mapa
        mapView.delegate = context.coordinator
        return mapView
    }*/

    public func updateUIView(_ view: MKMapView, context: Context) {
           /*let coordinate = CLLocationCoordinate2D(
               latitude: 34.011286, longitude: -116.166868)
           let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
           let region = MKCoordinateRegion(center: coordinate, span: span)
           view.setRegion(region, animated: true)*/
        
    }
    
}

struct MapView_Preview: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
