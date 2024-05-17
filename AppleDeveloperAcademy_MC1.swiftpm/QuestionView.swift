import SwiftUI


struct QuestionView: View {
    
    
    //Stepper
    @State private var peopleNum = 8.0
    
    //Slider
    
    @State private var sliderValue = 0.0
    var minimumValue = 0.0
    var maximumValue = 100000.0
    
    
    var body: some View {
        
        NavigationStack {
            
                VStack(alignment: .leading){
                    
                    Text("1/3")
                        .font(.title3)
                    Text("어디로 여행을 가나요?")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    @State var location: String = "" //업데이트되는 값
                    
                    
                        TextField(
                            "여행지를 입력하세요", 
                            text: $location
                        )
                        .frame(width: 300, height: 60)
                        //폰트 색상 변경 방법?
                        .background(Color(UIColor(red: 0xF4/255, green: 0xF5/255, blue: 0xF6/255, alpha: 1.0)).opacity(0.5))
                        .cornerRadius(16)
                    .padding(.bottom, 70)
                    
                    
              
                    Text("2/3")
                        .font(.title3)
                    Text("몇 명에게 선물하나요?")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Stepper(value:$peopleNum, in:0...100, step:1) {
                        Text("\(peopleNum, specifier: "%g")명")
                        
                    }
                    .padding(.bottom, 50)
                    
                    
                    
                   
                    //슬라이더 추가 방법?
                    
                
                        Text("3/3")
                            .font(.title3)
                        Text("총 구매 예산은 얼마인가요?")
                            .font(.title)
                            .fontWeight(.bold)
                        
                             Text("\(Int(sliderValue))원")
                        HStack {
                            
                            //Int 값 안에 더블값
                            Text("\(Int(minimumValue))")
                            
                            //2.
                            Slider(value: $sliderValue, in: minimumValue...maximumValue)
                                .accentColor(Color(UIColor(hex: "A8A6FA")))
                            
                            Text("\(Int(maximumValue))")
                       
                        }
//                        .padding()
                        
                    
                    
                    Spacer()
                    
                    NavigationLink (destination: ItemRow()) {
                        Text("선물 추천 받기")
                            .font(.title2)
                            .frame(width: 300, height: 60)
                            .foregroundColor(.white)
                        
                            .background(Color(UIColor(hex: "A8A6FA")))
                            .cornerRadius(20)
                        
                    }
                    .padding(.top, 50)
                    
                    
                }
        }  
        .padding(.horizontal,20)
         .fixedSize()
    }
}
