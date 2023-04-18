//
//  WhatIsLoteriaView.swift
//  Loteria
//
//  Created by Leslie Mora Ponce on 4/15/23.
//

import SwiftUI

struct WhatIsLoteriaView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            HStack(alignment: .center) {
                Text("What is Loteria?")
                    .font(.system(size: 90))
                    .foregroundColor(.pink)
                    .shadow(radius:5)
                    .padding(.top, 50)
            }
            
            Spacer(minLength: 30)
            
            VStack{
                Text("It is a well-known game of chance throughout Mexico and in other parts of the world. The lottery has 54 cards and a variable number of cards called 'tables' that consist of 16 images that represent the Mexican culture.")
                    .font(.system(size: 35))
            }
            Spacer(minLength: 30)
            
            VStack(alignment: .leading){
                Text("Rules:")
                    .font(.system(size: 60))
                    .foregroundColor(.pink)
                    .shadow(radius:5)
            }
            
            Spacer(minLength: 30)
            
            Group{
                VStack(alignment: .leading){
                    Text("1. All players choose one of the tables at random.")
                        .font(.system(size: 30))
                    Text("2. The alignment that will be the way to win is established, some prefer to fill the entire table or make an alignment of 4 figures.")
                        .font(.system(size: 30))
                    Text("3. Bets are placed in case players want to win money or some other prize.")
                        .font(.system(size: 30))
                    Text("4. The players take pebbles, chips, beans, or some other object with which they can mark the figures mentioned by the card caller.")
                        .font(.system(size: 30))
                    Text("5. The card caller starts the game by saying 'Corre!'")
                        .font(.system(size: 30))
                    Text("6. The card caller takes a card and in a loud voice says the name according to what has come out: 'the heart', 'the drunkard', 'the star', etc.")
                        .font(.system(size: 30))
                    Text("7. All the players will mark the figures that they do have when the shouter mentions them.")
                        .font(.system(size: 30))
                    Text("8. The player who completes their table with all the named figures or who complies with the agreed alignment must shout “loteria!” this way everyone will know that there is already a winner.")
                        .font(.system(size: 30))

                }
            }
            
                Spacer(minLength: 30)
            
            Group{
            VStack{
                Text("Alaignments to Play:")
                .font(.system(size: 60))
                .foregroundColor(.pink)
                .shadow(radius:5)
            }
                Spacer(minLength: 30)
                VStack{
                Text("Full Table Win")
                    .font(.system(size: 40))
                    .foregroundColor(.black)
                Spacer(minLength: 15)
                Text("This is the most popular way to get a win and its by filling up the whole table")
                    .font(.system(size: 30))
                CardView(card: Card(cardMode: .display, number: "win6"))
                Spacer(minLength: 50)
            }
            VStack{
                Text("Corner Table Win")
                .font(.system(size: 40))
                .foregroundColor(.black)
                Text("Filling just the 4 corners of the table")
                    .font(.system(size: 30))
                CardView(card: Card(cardMode: .display, number: "win2"))
                Spacer(minLength: 50)
            }
            VStack{
                Text("Cross Table Win")
                .font(.system(size: 40))
                .foregroundColor(.black)
                Text("Rows crossing the table either of this is an option")
                    .font(.system(size: 30))
                CardView(card: Card(cardMode: .display, number: "win3"))
                Spacer(minLength: 50)
            }
                VStack{
                    Text("Row Table Win")
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                    Text("Rows can be parallel or perpendicular anywhere on the table")
                        .font(.system(size: 30))
                    CardView(card: Card(cardMode: .display, number: "win4"))
                    CardView(card: Card(cardMode: .display, number: "win5"))
                }
            }
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(red: 254.0/255.0, green: 255.0/255.0, blue: 86.0/255.0))
    }
}

struct WhatIsLoteriaView_Previews: PreviewProvider {
    static var previews: some View {
        WhatIsLoteriaView()
    }
}
