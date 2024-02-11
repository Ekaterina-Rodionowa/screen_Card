//
//  screen_CardsApp.swift
//  screen_Cards
//
//  Created by Катерина Родионова on 07.02.2024.
//

import SwiftUI

@main
struct screen_CardsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(model: Model(title: "Чай SPAR Молочный Улун 200г", description: "Прикоснитесь к древним легендам и обретите внутреннюю гармонию с нежным чаем «Молочный улун». Благородный сладковатый вкус и тонкий молочный аромат. Улун оказывает расслабляющее и успокаивающее действие на нервную систему, обогащен антиоксидантами и витаминами.", price: "168.90 ₽", imageName: "tea", imageCoutry: "images", characteristica: Characteristica(product: "Россия, Красноярский край", everyValue: "25 ккал,100кЖд", fats: "0.1", squirrels: "1.1", carbohydrate: "3.3"), reviews: Reviews(reting: "4.8", count: "19", review: Review(name: "Дима", data: " 17 Декабря 2023 г.", description: "130+ к цене с сентября. Не скажу, что неоправданно, но немного печально. Чай классный"))))
        }
    }
}
