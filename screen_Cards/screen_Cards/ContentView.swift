//
//  ContentView.swift
//  screen_Cards
//
//  Created by Катерина Родионова on 07.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State  private var count = 0
    @State  private var price = 168.90
    @State  private var currProduc: String = "Шт"
    var model: Model
    
    var body: some View {
        ScrollView(.vertical) {
            
            VStack (alignment: .leading, spacing: 20) {
                ZStack {
                    RoundedRectangle(cornerRadius: 5, style:  .continuous)
                        .foregroundColor(.green)
                        .frame(width: 150, height: 32)
                    Text("Скидка по карте")
                }
                .font(.footnote)
                .foregroundColor(.white)
                .padding(.leading)
                
                Image(model.imageName)
                    .resizable()
                // .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .padding()
                
                
                detail()
            }
        }
        //        .ignoresSafeArea(.all)
        //        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    @ViewBuilder
    private func  detail() -> some View {
        
        VStack(alignment: .leading) {
            HStack {
                ForEach(0..<1) { _ in
                    Image(systemName: "star.leadinghalf.filled")
                        .foregroundColor(.yellow)
                    
                }
                
                Text(model.reviews.reting)
                Text("|")
                    .foregroundColor(.gray)
                Text("19 отзывов")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.top, 2)
                
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 5.0, style: .continuous)
                        .foregroundColor(.red)
                        .frame(width: 32, height: 24)
                    Text("5%")
                }
                .font(.footnote)
                .foregroundColor(.white)
                .padding()
            }
            .padding(.leading)
            
            VStack (alignment: .leading) {
                Text(model.title)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                Spacer()
                VStack(alignment: .leading)  {
                    HStack{
                        Image(model.imageCoutry)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .cornerRadius(50)
                        Text("Китай")
                    }
                    Text("Описание")
                        .font(.system(.subheadline, design: .rounded))
                        .fontWeight(.bold)
                    Spacer()
                    
                    Text(model.description)
                    
                    
                }
                
                .font(.subheadline)
                // .padding(.horizontal)
            }
            //.frame(maxWidth: .infinity, maxHeight: 150, alignment: .topLeading)
            .padding()
            .padding(.leading)
            VStack(alignment: .leading) {
                
                HStack {
                    Text("Основные характеристики")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Spacer()
                    
                }
                
                HStack(alignment: .top) {
                    Text("Производство")
                    Text("----------")
                        .foregroundColor(.gray)
                    Spacer()
                    Text(model.characteristica.product)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.trailing)
                        .lineLimit(2)
                    
                }
                .font(.footnote)
                
                HStack(alignment: .top) {
                    Text("Энергическая ценность, ккал/100г")
                    Text("----------")
                        .foregroundColor(.gray)
                    Spacer()
                    Text(model.characteristica.everyValue)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.trailing)
                        .lineLimit(2)
                    
                }
                .font(.footnote)
                
                
                HStack(alignment: .top) {
                    Text("Жиры/100г")
                    Text("----------------------")
                        .foregroundColor(.gray)
                    Spacer()
                    Text(model.characteristica.fats)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.trailing)
                        .lineLimit(2)
                }
                .font(.footnote)
                
                HStack(alignment: .top) {
                    Text("Белки/100г")
                    Text("-----------------------")
                        .foregroundColor(.gray)
                    Spacer()
                    Text(model.characteristica.squirrels)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.trailing)
                        .lineLimit(2)
                }
                .font(.footnote)
                
                HStack(alignment: .top) {
                    Text("Углеводы/100г")
                    Text("---------------------")
                        .foregroundColor(.gray)
                    Spacer()
                    Text(model.characteristica.carbohydrate)
                        .frame(maxWidth: .infinity)
                    //    .frame(height: 100)
                        .multilineTextAlignment(.trailing)
                        .lineLimit(2)
                }
                
                .font(.footnote)
                
            }
            .padding(.leading)
            
            NavigationLink {
                
            } label: {
                Text("Все характеристики")
                    .bold()
                    .foregroundColor(.green)
            }
            .padding(.leading)
            HStack {
                Text("Отзывы")
                    .fontWeight(.bold)
                Spacer()
                NavigationLink {
                    
                } label: {
                    Text("Все 155")
                        .bold()
                        .font(.subheadline)
                        .foregroundColor(.green)
                        .padding()
                }
            }
            .padding(.leading)
            Spacer()
            
            ZStack(alignment: .bottom) {
                RoundedRectangle(cornerRadius: 15, style:  .continuous)
                
                    .stroke(Color.gray, lineWidth: 0.2)
                    .frame(width: 250, height: 150)
                    .padding(.leading)
                
                HStack(alignment: .bottom) {
                    
                    
                    VStack(alignment: .leading, spacing: 8) {
                        
                        
                        
                        Spacer()
                        HStack {
                            Text(model.reviews.review.name)
                                .foregroundColor(.black)
                            ForEach(0..<4) { _ in
                                Image(systemName: "star.fill")
                            }
                            Image(systemName: "star.leadinghalf.filled")
                            
                        }
                        .foregroundColor(.yellow)
                        .padding(.leading)
                        
                        VStack(alignment: .leading, spacing: 2) {
                            Text(model.reviews.review.data)
                                .foregroundColor(.gray) .font(.footnote)
                            
                            
                        }
                        VStack(alignment: .leading, spacing: 2) {
                            Text(model.reviews.review.description)
                                .font(.footnote)
                                .foregroundColor(.black)
                        }
                        
                    }
                    
                    
                    
                }
                .padding(.bottom, 30)
                .padding(.leading, 40)
                
            }
            
            
            .frame(width: 250, height: 160, alignment: .bottom)
            
            VStack (alignment: .leading, spacing: 20) {
                ZStack {
                    Button {
                        print("Добавить отзыв")
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15.0, style: .circular)
                                .stroke(Color.green, lineWidth: 1.0)
                                .frame(width: 300, height: 40)
                            Text("Оставить отзыв")
                                .foregroundColor(.green)
                        }
                    }
                }
            }
            .padding(25)
            VStack(alignment: .leading, spacing: 10) {
                Picker("", selection: $currProduc) {
                    Text("Шт")
                        .tag("Шт")
                    Text("Кг")
                        .tag("Кг")
        
                    
                }
                .pickerStyle(.segmented)
            }
            HStack {
                Text(model.price)
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
            }
            .padding(.leading)
            
            Text("̶1̶9̶9̶")
                .foregroundColor(.gray)
                .padding(.leading)
            ZStack {
                Button {
                    print("Добавить в корзину")
                    
                }
            label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0,style: .circular)
                        .foregroundColor(.green)
                    
                    VStack(alignment: .leading, spacing: 2){
                        Text(String("\(count) шт"))
                            .foregroundColor(.white)
                            .padding(.leading)
                        
                        
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text(String("\(price) ₽"))
                                .foregroundColor(.white)
                              //  .padding(.leading)
                        }
                        
                    }
                }
                
                .padding(45)
            }
                
                
                HStack {
                    Button {
                        count -= 1
                        price -= 1
                    }
                label: {
                    Text("-")
                }
                    Spacer()
                    
                    
                    
                    Button {
                        count += 1
                        price += 1
                    }
                label: {
                    Text("+")
                }
                    
                }
                .font(.title3)
                .foregroundColor(.white)
                
                .padding([.leading, .trailing])
                .padding(55)
                
                
                
            }
            .padding([.leading, .trailing, .bottom])
        }
        
        
    }
}
        
    

#Preview {
    ContentView(model: Model(title: "Чай SPAR Молочный Улун 200г", description: "Прикоснитесь к древним легендам и обретите внутреннюю гармонию с нежным чаем «Молочный улун». Благородный сладковатый вкус и тонкий молочный аромат. Улун оказывает расслабляющее и успокаивающее действие на нервную систему, обогащен антиоксидантами и витаминами.", price: "168.90 ₽", imageName: "tea", imageCoutry: "images", characteristica: Characteristica(product: "Россия, Красноярский край", everyValue: "25 ккал,100кЖд", fats: "0.1", squirrels: "1.1", carbohydrate: "3.3"), reviews: Reviews(reting: "4.8", count: "19", review: Review(name: "Дима", data: " 17 Декабря 2023 г.", description: "130+ к цене с сентября. Не скажу, что неоправданно, но немного печально. Чай классный"))))
}

