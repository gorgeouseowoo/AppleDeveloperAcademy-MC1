import SwiftUI

struct HomeView2: View {
    var body: some View {
        
        
        NavigationStack {
            
            VStack {
                ZStack {
                    Color(UIColor(hex: "A8A6FA"))
                        .opacity(0.15)
                    
                    Image("purpleGift")
                        .resizable()
                        .frame(width:317, height:317)
                        .padding(.bottom, 447)
                    
                    VStack (alignment:.center) {
                        Text("여행 선물,")
                            .font(.system(size: 50))
                            .fontWeight(.bold)
                            .padding(.bottom, 3)
                        Text("아직 고민하고 있나요?")
                            .font(.system(size: 28))
                             .fontWeight(.light)
                            .padding(.bottom, 5)
                        
                        Text("센스에 실용성까지 더한 선물을 추천해 드릴게요")
                            .font(.system(size: 13))
                            .fontWeight(.light)
                            .foregroundStyle(.gray)
                            .padding(.top, 6)
                        
                    }
                    .padding(.top, 90)
                    .padding(.horizontal, 20)
                    
                    
                    
                    
                    
                    
                    
                    VStack {
                        NavigationLink (destination: MapView()) {
                            HStack {
                                Text("지도 검색")
                                    .font(.system(size: 25))
                                    .padding(.trailing, 100)
                                    .foregroundStyle(.white)
                                
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .frame(width: 18, height: 18)
                                    .foregroundStyle(.white)
                            }
                            .padding() 
                            .background(Color(UIColor(hex: "A8A6FA")))
                            .cornerRadius(30) 
                            
                        }
                        
                        .padding(.bottom, 10)
                        
                        
                        
                        NavigationLink (destination: QuestionView()) {
                            
                            HStack {
                                Text("선물 추천")
                                    .font(.system(size: 25))
                                    .padding(.trailing, 100)
                                    .foregroundStyle(.white)
                                
                                
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .frame(width: 18, height: 18)
                                    .foregroundStyle(.white)
                            }
                            .padding() // 버튼 주변에 간격을 추가하여 배경색이 표시되도록 함
                            .background(Color(UIColor(hex: "A8A6FA"))) 
                            .cornerRadius(30) // 버튼의 모서리를 둥글게 만듦
                            
                            //                         .overlay(
                            //                            RoundedRectangle(cornerRadius: 10)
                            //                                .inset(by: -15)    
                            //                                .stroke(.white, lineWidth: 3))
                        }
                        //                    
                    }
                    .padding(.top, 600)
                }
                
            }
            
        }
        
        
    }
}

#Preview {
    HomeView2()
}
