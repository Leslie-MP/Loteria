//
//  Strings.swift
//  Loteria
//
//  Created by Leslie Mora Ponce on 4/18/23.
//
import Foundation

struct Strings{
    struct StartView{
        static let subtitle = GameAppState.shared.en_lang ? "Mexican Tradition": "Tradición Mexicana"
        static let startButton = GameAppState.shared.en_lang ? "Start": "Iniciar"

    }
    struct MenuView{
        static let jugar = GameAppState.shared.en_lang ? "Play": "Jugar"
        static let ajustes = GameAppState.shared.en_lang ? "Settings": "Ajustes"
        static let llamar = GameAppState.shared.en_lang ?  "Call Cards": "Llamar Cartas"
        static let queEsLoteria = GameAppState.shared.en_lang ?  "What is Loteria": "¿Que es la Lotería?"
        
        static let acceptButton = GameAppState.shared.en_lang ?   "Accept" : "Aceptar"
        static let aboutTitle = GameAppState.shared.en_lang ?   "About La Lotería app" : "¿Qué es La Lotería app?"
        static let aboutsubTitle = GameAppState.shared.en_lang ? "La Lotería is a game aimed to offer a way for people with mobility problems or other disability to still enjoy the traditional Loteria board game. It is meant to be played as an extension of the game. I was inspired to build it to help my abuelita play the game now that she is of old age, I hope you enjoy the game and are able to use it to help your loved ones enjoy our beauitful tradition" : "La Lotería es un juego enfocado en ayudar a gente con problemas motrices u otras discapacidades a disfrutar del juego tradicional de mesa. Me inspiré en hacer esta app para ayudar a mi abuelita a jugar el juego aún en su avanzada edad. Espero que disfrutes este juego y te sirva de ayuda a sus seres queridos para disfrutar de esta tradición."
        
    }
    static var AppName = GameAppState.shared.en_lang ? "Loteria": "La Lotería"
    struct SettingsView{
        static let assist = GameAppState.shared.en_lang ? "Assisted Play": "Juego Asistido"
        static let call = GameAppState.shared.en_lang ? "Call Cards": "Llamar Cartas"
        static let velocidad1 = GameAppState.shared.en_lang ? "Speed": "Velocidad"
        static let settings = GameAppState.shared.en_lang ? "Settings": "Ajustes"
        static let velocidad = GameAppState.shared.en_lang ? "Select Speed": "Selecciona Velocidad"
        static let lento = GameAppState.shared.en_lang ? "Slow":"Lento"
        static let medio = GameAppState.shared.en_lang ? "Medium": "Mediano"
        static let rapido = GameAppState.shared.en_lang ? "Fast": "Rápido"
        static let empezar = GameAppState.shared.en_lang ? "Start Game": "Comenzar Juego"
        static let language = GameAppState.shared.en_lang ? "Language" : "Idioma"
        static let spanish = GameAppState.shared.en_lang ? "Spanish" : "Español"
        static let english = GameAppState.shared.en_lang ? "English" : "Inglés"
        static let text = GameAppState.shared.en_lang ? "When assisted play is on, beans will be placed on the table automatically" : "Cuando juego asistido está activado, los frijoles se pondrán automaticamente en la tabla"
        static let text1 = GameAppState.shared.en_lang ? "When this is on, cards will be called with text to speech": "Cuando esto esté activado, las tarjetas serán llamadas con voz"
        static let text2 = GameAppState.shared.en_lang ? "Speed of how quickly cards will be called": "Esta es la velocidad de que tan rapido las cartas serán llamadas"
        static let text3 = GameAppState.shared.en_lang ? "Language of the game, needs to restart to take effect": "Idioma del juego, es necesario reiniciar el juego para que el cambio ocurra"


    }
    struct PlayCardView{
        static let game = GameAppState.shared.en_lang ? "Game on!": "¡A jugar!"
        static let next = GameAppState.shared.en_lang ? "Next Card": "Siguiente Carta"
        static let loteria = GameAppState.shared.en_lang ? "Loteria!": "¡Lotería!"
        static let youWonTitle = GameAppState.shared.en_lang ? "You Won !! 🎉" : "¡¡¡Ganaste!!! 🎉"
        static let youWonSubtitle = GameAppState.shared.en_lang ? "Congratulation on this victory!" : "¡Felicidades en esta victoria!"
        static let playAgain = GameAppState.shared.en_lang ? "Play Again" : "Volver a jugar"

    }
    struct SelectTablaView{
        static let select = GameAppState.shared.en_lang ? "Select your Table": "Selecciona tu tabla"
        static let button = GameAppState.shared.en_lang ? "Next": "Siguiente"
    }
    struct WhatIsLoteriaView{
        static let tittle = GameAppState.shared.en_lang ? "What is Loteria?": "¿Que es la Lotería?"
        
        static let describe = GameAppState.shared.en_lang ? "In Mexico, loteria is a game of chance similar to bingo, it is played with a deck of cards instead of numbers. The deck is made up of 54 different images, which include objects and characters such as the mermaid, the gentleman, the barrel, the star, and the cactus. The purpose of the game is to fill a board (also known as a 'table') chosen by the player, to complete a certain pattern (such as four images in a row, diagonally, or in the corners). The first person to complete their table yells 'Loteria!', ending the round. During the game, there is a person who is dedicated to calling the cards, who is often known as 'the singer'. Traditionally, the singer accompanies each letter with a phrase or saying something that refers to the image. Thus, the shrimp card would include the saying 'shrimp that falls asleep is taken by the current', while the little devil could be followed by 'behave well kid, or else the red man will take you'." : "En México, la lotería es un juego de azar parecido al bingo que se juega con un mazo de cartas en vez de números. La baraja se compone de 54 imágenes diferentes, que incluyen objetos y personajes como la sirena, el catrín, el barril, la estrella y el nopal. El propósito del juego es llenar una tabla (conocida también como 'cartón') elegida por el jugador, o bien, completar cierto patrón (como cuatro imágenes en fila, en diagonal, o en las esquinas). La primera persona en completar su tabla grita '¡lotería!', dando fin a la ronda. Durante el juego, hay una persona que se dedica a cantar las cartas, que a menudo se conoce como 'el gritón'. Tradicionalmente, el gritón acompaña cada carta con una frase o refrán que hace referencia a la imagen. Así, la tarjeta del camarón incluiría el refrán 'camarón que se duerme se lo lleva la corriente', mientras que el diablito podría ser seguido de 'pórtate bien cuatito, si no te lleva el coloradito'."
        
        static let reglas = GameAppState.shared.en_lang ? "Rules:": "Reglas:"
        
        static let regla1 = GameAppState.shared.en_lang ? "1. All players choose one of the tables.": "1. Todos los jugadores eligen una de las tablas."
        
        static let regla2 = GameAppState.shared.en_lang ? "2. The alignment that will be the way to win is established, some prefer to fill the entire table or make an alignment of 4 figures.":"2. Se establece la alineación que será la forma de ganar, unos prefieren llenar toda la tabla o hacer una alineación de 4 figuras."
        
        static let regla3 = GameAppState.shared.en_lang ? "3. Bets are placed in case players want to win money or some other prize.":"3. Se realizan las apuestas en caso de que los jugadores quieran ganar dinero o algún otro premio."
        
        static let regla4 = GameAppState.shared.en_lang ? "4. The players take pebbles, chips, beans, or some other object with which they can mark the figures mentioned by the card caller.":"4. Los jugadores toman piedritas, fichas, frijoles o algún otro objetivo con el que puedan marcar las figuras mencionadas por el gritón."
        
        static let regla5 = GameAppState.shared.en_lang ? "5. The card caller starts the game by saying 'Corre!'": "5. El gritón da comienzo al juego diciendo ¡Corre!."
        
        static let regla6 = GameAppState.shared.en_lang ? "6. The card caller takes a card and in a loud voice says the name according to what has come out: 'the heart', 'the drunkard', 'the star', etc.": "6. El gritón toma una carta y con voz fuerte dice el nombre de acuerdo con lo que haya salido: “el corazón”, “el borracho”, “la estrella, etc."
        
        static let regla7 = GameAppState.shared.en_lang ? "7. All the players will mark the figures that they do have when the singer mentions them.": "7. Todos los jugares marcaran las figuras que sí tengan al momento que el gritón las mencione."
        
        static let regla8 = GameAppState.shared.en_lang ? "8. The player who completes their table with all the named figures or who complies with the agreed alignment must shout “loteria!” this way everyone will know that there is already a winner.": "8. El jugador que complete su tabla con todas las figuras nombradas o que cumpla con la alineación acordada debe gritar “¡lotería!” de esta manera todos sabrán que ya hay un ganador."
        
        static let alineaciones = GameAppState.shared.en_lang ? "Alaignments to Play:": "Alineaciones Jugables"
        
        static let win = GameAppState.shared.en_lang ? "Full Table" : "Tabla Llena"
        
        static let win1 = GameAppState.shared.en_lang ? "This is the most popular way to get a win and its by filling up the whole table" : "Esta es la alineación más popular para conseguir lotería y es llenando toda la tabla"
        
        static let win2 = GameAppState.shared.en_lang ? "Corner Table": "Tabla con 4 Esquinas"
        
        static let win3 = GameAppState.shared.en_lang ? "Filling just the 4 corners of the table" : "Llena las cuatro esquinas de la tabla"
        
        static let win4 = GameAppState.shared.en_lang ? "Cross Table": "Tabla Cruzada"
        
        static let win5 = GameAppState.shared.en_lang ? "Rows crossing the table either of this is an option": "Líneas cruzadas en la tabla yendo a cualquier dirección"
        
        static let win6 = GameAppState.shared.en_lang ? "Row Table": "Lineas en Tabla"
        
        static let win7 = GameAppState.shared.en_lang ? "Rows can be parallel or perpendicular anywhere on the table" : "Las líneas pueden ser paralelas o perpendicular en cualquier lugar de la tabla"
    }
    struct Cards{
        static func nameFromNumber(cardNo: String) -> String {
             
             switch cardNo {
             case "1": return GameAppState.shared.en_lang ? "The Rooster " :"El Gallo"
             case "2": return GameAppState.shared.en_lang ? "The Devil " :"El Diablito"
             case "3": return GameAppState.shared.en_lang ? "The Lady " :"La Dama"
             case "4": return GameAppState.shared.en_lang ? "The Gentleman " :"El Catrin"
             case "5": return GameAppState.shared.en_lang ? "The Umbrella " :"El Paraguas"
             case "6": return GameAppState.shared.en_lang ? "The Mermaid " :"La Sirena"
             case "7": return GameAppState.shared.en_lang ? "The Ladder " :"La Escarela"
             case "8": return GameAppState.shared.en_lang ? "The Bottle " :"La botella"
             case "9": return GameAppState.shared.en_lang ? "The Barrel " :"El Barril"
             case "10": return GameAppState.shared.en_lang ? "The Tree " :"El Arbol"
             case "11": return GameAppState.shared.en_lang ? "The Melon " :"El Melon"
             case "12": return GameAppState.shared.en_lang ? "The Brave Man " :"El Valiente"
             case "13": return GameAppState.shared.en_lang ? "The Bonnet " :"El Gorrito"
             case "14": return GameAppState.shared.en_lang ? "The Death " :"La Muerte"
             case "15": return GameAppState.shared.en_lang ? "The Pear " :"La Pera"
             case "16": return GameAppState.shared.en_lang ? "The Flag " :"La Bandera"
             case "17": return GameAppState.shared.en_lang ? "The Mandolin " :"El Bandolon"
             case "18": return GameAppState.shared.en_lang ? "The Cello " :"El Violoncello"
             case "19": return GameAppState.shared.en_lang ? "The Heron " :"La Garza"
             case "20": return GameAppState.shared.en_lang ? "The Bird " :"El Pájaro"
             case "21": return GameAppState.shared.en_lang ? "The Hand " :"La Mano"
             case "22": return GameAppState.shared.en_lang ? "The Boot " :"La Bota"
             case "23": return GameAppState.shared.en_lang ? "The Moon " :"La Luna"
             case "24": return GameAppState.shared.en_lang ? "The Parrot " :"El Cotorro"
             case "25": return GameAppState.shared.en_lang ? "The Drunkard " :"El Borracho"
             case "26": return GameAppState.shared.en_lang ? "The Apple " :"La Manzana"
             case "27": return GameAppState.shared.en_lang ? "The Heart " :"El Corazón"
             case "28": return GameAppState.shared.en_lang ? "The Watermelon " :"La Sandía"
             case "29": return GameAppState.shared.en_lang ? "The Drum " :"El Tambor"
             case "30": return GameAppState.shared.en_lang ? "The Shrimp " :"El Camarón"
             case "31": return GameAppState.shared.en_lang ? "The Arrows " :"Las Jaras"
             case "32": return GameAppState.shared.en_lang ? "The Musician " :"El Músico"
             case "33": return GameAppState.shared.en_lang ? "The Spider " :"La Araña"
             case "34": return GameAppState.shared.en_lang ? "The Soldier " :"El Soldado"
             case "35": return GameAppState.shared.en_lang ? "The Star " :"La Estrella"
             case "36": return GameAppState.shared.en_lang ? "The Saucepan " :"El Cazo"
             case "37": return GameAppState.shared.en_lang ? "The World " :"El Mundo"
             case "38": return GameAppState.shared.en_lang ? "The Swift " :"El Swift"
             case "39": return GameAppState.shared.en_lang ? "The Cactus " :"El Nopal"
             case "40": return GameAppState.shared.en_lang ? "The Scorpion " :"El Alacrán"
             case "41": return GameAppState.shared.en_lang ? "The Rose " :"La Rosa"
             case "42": return GameAppState.shared.en_lang ? "The Skull " :"La Calavera"
             case "43": return GameAppState.shared.en_lang ? "The Bell " :"La Campana"
             case "44": return GameAppState.shared.en_lang ? "The Water Pitcher " :"El Cantarito"
             case "45": return GameAppState.shared.en_lang ? "The Deer " :"El Venado"
             case "46": return GameAppState.shared.en_lang ? "The Sun " :"El Sol"
             case "47": return GameAppState.shared.en_lang ? "The Crown " :"La Corona"
             case "48": return GameAppState.shared.en_lang ? "The Canoe " :"La Chalupa"
             case "49": return GameAppState.shared.en_lang ? "The Pine Tree " :"El Pino"
             case "50": return GameAppState.shared.en_lang ? "The Fish " :"El Pescado"
             case "51": return GameAppState.shared.en_lang ? "The Palm Tree " :"La Palma"
             case "52": return GameAppState.shared.en_lang ? "The Flowerpot " :"La Maceta"
             case "53": return GameAppState.shared.en_lang ? "The Harp " :"El Arpa"
             case "54": return GameAppState.shared.en_lang ? "The Frog " :"La Rana"
             
             default: return GameAppState.shared.en_lang ? "Back " :" "
             }
         }
         
    }
}

