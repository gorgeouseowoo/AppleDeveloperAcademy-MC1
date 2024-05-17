import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let price: Int
}

var items: [Item] = [ Item(image: "가케빵", name: "도쿄 렌가빵", price: 10980),
                      Item(image: "녹차 버터샌드", name: "녹차 버터샌드", price: 14500),
                      Item(image: "shiro", name: "시로 미니 퍼퓸", price: 62000),
                      Item(image: "마누카벌꿀", name: "마누카 벌꿀", price: 13900 ),
                      Item(image: "사케", name: "쿠보타 만쥬", price: 15500),
                      Item(image: "요코모쿠롤", name:"요코모쿠 시가롤" , price: 12400)
]
