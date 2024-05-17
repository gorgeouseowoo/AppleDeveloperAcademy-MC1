import SwiftUI


//색상변경
// UIColor의 hex 값을 사용하여 SwiftUI에서 Color로 변환하는 확장
extension Color {
    init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}

struct ItemRow: View {
    //function, State 등.. 구조체? 개념 
    //객체지향프로그래밍 
    var body: some View {
        //view를 표현하는 컴포넌트 
        
        ScrollView {
            
            NavigationStack {
                
                VStack {
                    HStack {
                        
                        Button (action: {
                            
                        }, label: {
                            Text("추천")
                                .underline()
                                .foregroundColor(Color(hex: "5D59F5"))
                                .padding(.trailing,10)
                        })
                        
                        NavigationLink(destination:ItemCombine())   {
                            Text("조합")
                                .underline()
                                .foregroundColor(.gray.opacity(0.4))
                                .padding(.leading,10)
                        }
                    } 
                    .font(.title2)
                    .padding(.bottom, 20)
                    
                    
                    HStack {
                        Text("티나님께 추천하는 선물이에요🎁")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .cornerRadius(10)
                        
                    }
                    .padding(.bottom, 20)
                    
                    
                    HStack {
                        
                        HStack {
                            Button (action: {
                                
                            }, label: {
                                Text("일본")
                                    .font(.system(size: 20))
                                    .foregroundStyle(.white)
                                
                                Image(systemName: "chevron.down")
                                    .foregroundColor(.white)
                            })
                            .frame(width:90, height:30)
                            .background(Color(UIColor(hex: "A8A6FA"))) 
                            .cornerRadius(20) // 버튼의 모서리를 둥글게 만듦
                        }
                        
                        HStack {
                            Button (action: {
                                
                            }, label: {
                                Text("5명")
                                    .font(.system(size: 20))
                                    .foregroundStyle(.white)
                                Image(systemName: "chevron.down")
                                    .foregroundColor(.white)
                            })
                            .frame(width:90, height:30)
                            .background(Color(UIColor(hex: "A8A6FA"))) 
                            .cornerRadius(20) // 버튼의 모서리를 둥글게 만듦
                            .foregroundColor(.white)
                            
                        }
                        
                        HStack {
                            Button (action: {
                                
                            }, label: {
                                Text("80000원")
                                    .font(.system(size: 20))
                                    .foregroundStyle(.white)
                                Image(systemName: "chevron.down")
                                    .foregroundColor(.white)
                            })
                            .frame(width:140, height:30)
                            .background(Color(UIColor(hex: "A8A6FA"))) 
                            .cornerRadius(20) // 버튼의 모서리를 둥글게 만듦
                        }
                    }
                    
                    //왼쪽 - 홀수번
                    
                    
//                    
//                    VStack {
//                        
//                        ForEach(0..<5) { index in
                            
                            
                            //                                            ZStack {
                            //                                                Image("가케빵")
                            //                                                    .resizable()
                            //                                                    .scaledToFill()
                            //                                                    .frame(width:190, height:190)
                            //                                                    .cornerRadius(5)
                            //                                                    .clipped()
                            //                                                
                            //                                                
                            //                                                Image(systemName: "heart")
                            //                                                    .resizable()
                            //                                                    .frame(width: 30, height: 30)
                            //                                                    .foregroundColor(.white)
                            //                                                    .offset(x:70, y:70)
                            //                                                
                            //                                                
                            //                                                VStack (alignment: .leading) {
                            //                                                    Text("도쿄 렌가빵")
                            //                                                        .font(.title2)   
                            //                                                        .foregroundColor(.black)
                            //                                                    Text("10980원")
                            //                                                        .font(.title2)
                            //                                                        .fontWeight(.semibold)
                            //                                                        .foregroundColor(.black)
                            //                                                }
                            //                                                .padding(.trailing, 90)
                            //                                                .padding(.top, 250)
                            //                                            
//                        }
//                    }
                    // items 배열 안을 반복해서 순회
                    // item 클로저
                    ForEach(0..<1) { _ in
                        VStack {
                            HStack {
                                itemRowView(item: items[0])
                                itemRowView(item: items[1])
                            }
                            
                            HStack {
                                itemRowView(item: items[2])
                                itemRowView(item: items[4])
                            }
                            HStack {
                                itemRowView(item: items[5])
                                itemRowView(item: items[3])
                            }
                        }
                    }
                    
                    .padding(.bottom, 20)
                    .padding(.top, 20)
                    .padding(.horizontal, 20)
                    
                }
            }
        }
    }
    
}

@ViewBuilder
private func itemRowView(item: Item) -> some View {
    NavigationLink (destination: ItemDetails()) {
        ZStack {
            Image(item.image)
                .resizable()
                .scaledToFill()
                .frame(width:190, height:190)
                .cornerRadius(5)
                .clipped()
            
            
            Image(systemName: "heart")
                .resizable()
                .frame(width: 30, height: 30)
                .offset(x:70, y:70)
                .foregroundColor(.white)
            
            
            VStack (alignment: .leading) {
                Text(item.name)
                    .font(.title2)
                    .foregroundColor(.black)
                Text("\(item.price)원")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
            }
            .padding(.trailing, 90)
            .padding(.top, 250)
        }
    }
}


#Preview(body: { 
    ItemRow()
})

//lazyVgrid
//
