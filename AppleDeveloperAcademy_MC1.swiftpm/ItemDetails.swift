import SwiftUI


struct ItemDetails: View {
    
    var body: some View {
        
        
        ScrollView {
            NavigationStack {
                VStack(alignment: .leading) {
                    Image("가케빵")
                        .resizable()
                        .frame( height: 400)
                    
                    HStack {
                        VStack (alignment: .leading) {
                            Text("도쿄 렌가빵")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                            
                            Text("10980원")
                                .font(.system(size: 30))
                            
                        }
                        
                        Spacer()
                        
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width:30, height:30)
                            .padding(.trailing, 60)
                    }
                    .padding(.top, 60)
                    
                    
                    VStack (alignment:.leading) {
                        
                        HStack {
                            Text("개수")
                                .kerning(25)
                                .font(.system(size: 15))
                                .foregroundStyle(Color.gray)
                            Text("4개입")
                                .font(.system(size: 15))
                                .padding(.leading, 10)
                        }
                        .padding(.bottom, 5)
                        
                        HStack {
                            Text("크기")
                                .kerning(25)
                                .font(.system(size: 15))
                                .foregroundStyle(Color.gray)
                            Text("20 X 30(cm)")
                                .font(.system(size: 15))
                                .padding(.leading, 10)
                        }
                        .padding(.bottom, 5)
                        
                        
                        HStack {
                            Text("무게")
                                .kerning(25)
                                .font(.system(size: 15))
                                .foregroundStyle(Color.gray)
                            Text("700g")
                                .font(.system(size: 15))
                                .padding(.leading, 10)
                            
                        }
                        .padding(.bottom, 5)
                        
                        
                        HStack {
                            Text("기내반입")
                                .font(.system(size: 15))
                                .foregroundStyle(Color.gray)
                            
                            Text("가능")
                                .font(.system(size: 15))
                                .padding(.leading, 33)
                        }
                        
                    }
                    
                    .padding(.top, 20)
                    //.padding(.trailing, 380)
                    .padding(.bottom, 20)
                    
                    
                    
                    Divider()
                    
                    VStack (alignment:.leading) {
                        Text("상품설명")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                        //.padding(.trailing, 270)
                            .padding(.top, 20)
                        
                        Text("'벽돌빵'이라고도 불리는 이 빵은 일본 도쿄의 한 베이커리에서 시작된 특색 있는 빵입니다. 부드러우면서 촉촉한 식감을 가지고 있으며, 담백하거나 약간 달콤한 맛이 납니다. 렌가빵은 모양뿐만 아니라 맛과 질감에서도 독특함을 지니고 있어많은 사람들에게 사랑받고 있습니다.")
                            .font(.system(size: 18, weight: .light))
                            .frame(width: 600, height: 100)
                            .foregroundColor(Color.black)
                            .lineSpacing(10)
                            .minimumScaleFactor(0.2)
                            .padding(.bottom, 20)
                        
                    }
                    //.padding(.trailing, 240)
                    
                    
                    
                    
                    
                    Divider()
                    
                    VStack (alignment:.leading){
                        Text("판매장소")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(.top, 20)
                            .padding(.bottom, 15)
                        //.padding(.leading, 20)
                        
                        Text("도쿄앙팡 마메이치즈 에큐트 도쿄점 \n(JR 도쿄역 구내 1F 사우스코트 내)")
                            .font(.system(size: 18, weight: .light))
                            .lineSpacing(10)
                        //.padding(.leading, 20)
                        
                        NavigationLink(destination: MapView()){
                            MapView()
                                .frame(height: 400)
                                .padding(.bottom, 10)
                        }
                    }
                    //.padding(.trailing, 350)
                    
//                    Divider()
//                    VStack (alignment:.leading) {
//                        Text("선물후기")
//                            .font(.system(size: 20))
//                            .padding(.top, 20)
//                        
//                    }
//                    
//                    Divider()
//                    VStack (alignment:.leading) {
//                        Text("선물조합")
//                            .font(.system(size: 20))
//                            .padding(.top, 20)
//                        
//                    }

                    
                    
                }
                .padding(.horizontal, 100)
                
                
                //.fixedSize()
            }
            //.padding(.horizontal, 20)
        }
    }
}
