import SwiftUI

struct ItemCombine: View {
    //function, State 등.. 구조체? 개념 
    //객체지향프로그래밍 
    var body: some View{
        //view를 표현하는 컴포넌트 
        
        ScrollView {
            
            NavigationStack {
                
                VStack {
                    HStack {
                        
                        NavigationLink(destination:ItemCombine())   {
                       
                            Text("추천")
                                .underline()
                                .foregroundColor(Color.gray)
                                .padding(.trailing,10)
                        }
                        
                        
                        Button (action: {
                            
                        }, label: {
                            
                            Text("조합")
                                .underline()
                                .foregroundColor(Color(hex: "5D59F5"))

                                .foregroundColor(.gray.opacity(0.4))
                                .padding(.leading,10)
                        })
                        
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
                }
            }
        }
    }
}
