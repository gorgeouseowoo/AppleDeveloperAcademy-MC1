import SwiftUI
import MapKit



struct MapView: View {
    
    
    let store1 = CLLocationCoordinate2D (latitude: 35.681340749647326, longitude: 139.76692094879587)
    let store2 = CLLocationCoordinate2D (latitude: 35.68608324379486, longitude: 139.7738432194702)
    let store3 = CLLocationCoordinate2D (latitude: 35.68232551024059, longitude: 139.76969971731754)
    let store4 = CLLocationCoordinate2D (latitude: 35.68129210323003, longitude: 139.76291541706553)
    let store5 = CLLocationCoordinate2D (latitude: 35.683237578306944, longitude: 139.76651262414214)
    

    
   
    
    @State var camera: MapCameraPosition = .automatic 
    
    var body: some View {
        Map(position: $camera) {
         
            //마커
            Marker("쿠보타 만쥬", systemImage: "gift", coordinate: store2)
                .tint(.pink)
            
            Marker("녹차 버터샌드", systemImage: "gift", coordinate: store3)
                .tint(.pink)
            
        
            Marker("렌가빵", systemImage: "gift", coordinate: store1)
                .tint(.pink)
            
            Marker("시로 미니퍼퓸", systemImage: "gift", coordinate: store4)
                .tint(.pink)
            
            Marker("요코모쿠 시가롤", systemImage: "gift", coordinate: store5)
                .tint(.pink)
            
//            //커스텀마커
//            Annotation("렌가빵", coordinate: store1) {
//                Text("🎁")
//                    .padding()
//                    .background(.white)

            }
        }
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 35.66085989107718, longitude: 139.70196619176846),
            span: MKCoordinateSpan(latitudeDelta: 0.2 , longitudeDelta:0.2)
        )
    }
    

//sheet !!
//playground - sheet
//ios - (bottom) sheet


//
//struct LocationMapAnnotationView: View {
//    var body: some View {
//        
//      
//            Image(systemName: "map.circle.fill")
//                .resizable()
//                .scaledToFit()
//                .frame(maxWidth: 30, maxHeight: 30)
//            font(.headline)
//                .foregroundColor(.white)
//                .padding(6)
//                .background(Color.accentColor)
//                .clipShape(Circle())
//    
//    }
//}

#Preview {
    MapView()
}
