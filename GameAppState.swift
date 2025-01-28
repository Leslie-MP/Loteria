//
//  GameAppState.swift
//  Loteria
//
//  Created by Leslie Mora Ponce on 4/16/23.
//

import Foundation
import AVFoundation
import CoreText

class GameAppState: ObservableObject {
    static var shared: GameAppState = GameAppState()
    private var rolledCards: [String] = []
    private var remainingCards: [String] = []
    private let userDefaults = UserDefaults.standard
    private let synthesizer = AVSpeechSynthesizer()
    private let engVoice = AVSpeechSynthesisVoice(language: "en-US")
    private let spaVoice = AVSpeechSynthesisVoice(language: "es-MX")
    private var audioPlayer: AVAudioPlayer?
    private var timer: Timer?
    var en_lang: Bool = true
    var isGameRunning: Bool = false
    var initialized: Bool = false
    
    // MARK: - OBSERVABLES
    @Published var didWin: Bool = false
    @Published var isAssistedPlayEnabled: Bool = false
    @Published var isCalledCardEnabled: Bool = false
    @Published var shownFirstHelp: Bool = false
    @Published var speedGame: Int = 0
    @Published var timeCount: Int = 90
    @Published var currCard: Card = Card.cardBack
    @Published var prev1Card: Card = Card.cardBack
    @Published var prev2Card: Card = Card.cardBack
    @Published var prev3Card: Card = Card.cardBack
    
    
    init() {
        initLogic()
    }
    
    func initLogic() {
        guard initialized == false else { return }
        registerFonts()

        let shownFirstHelpOnce = userDefaults.bool(forKey: "Loteria.firstHelp909")
        self.shownFirstHelp = shownFirstHelpOnce
        
        let assistedPlayEnabled = userDefaults.bool(forKey: "Loteria.assistedPlay")
        self.isAssistedPlayEnabled = assistedPlayEnabled
        
        let calledCardEnabled = userDefaults.bool(forKey: "Loteria.calledCardEnabled")
        self.isCalledCardEnabled = calledCardEnabled
        
        let gameSpeed = userDefaults.integer(forKey: "Loteria.selectSpeed")
        self.speedGame = gameSpeed
        let language = userDefaults.integer(forKey: "Loteria.language")
        self.en_lang = language == 0
        self.timeCount = 90/(1 + gameSpeed)
        
        if let path = Bundle.main.path(forResource: "ui-click", ofType: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            } catch {
                print("ERROR")
            }
        }
    }
    
    func initGame() {
        didWin = false
        rolledCards = []
        remainingCards = []
        for i in 1...54 {
            remainingCards.append(String(i))
        }
        remainingCards.shuffle()
    }
    func registerFonts() {
        let fontBold = Bundle.main.url(forResource: "Dongle-Bold", withExtension: "ttf")
        CTFontManagerRegisterFontsForURL(fontBold! as CFURL, CTFontManagerScope.process, nil)
        let fontReg = Bundle.main.url(forResource: "Dongle-Regular", withExtension: "ttf")
        CTFontManagerRegisterFontsForURL(fontReg! as CFURL, CTFontManagerScope.process, nil)
        let fontLight = Bundle.main.url(forResource: "Dongle-Light", withExtension: "ttf")
        CTFontManagerRegisterFontsForURL(fontLight! as CFURL, CTFontManagerScope.process, nil)
    }
    
    func nextCard(){
        guard remainingCards.isEmpty == false else{
            print ("Game Over")
            endGame()
            return
        }
        guard synthesizer.isSpeaking == false else {
            print ("Ando hablando")
            return
        }
        self.timeCount = 90 / (1 + speedGame)
        let nextCard = remainingCards.removeFirst()
        rolledCards.append(nextCard)
        prev3Card = prev2Card
        prev2Card = prev1Card
        prev1Card = currCard
        currCard = Card(cardMode: .display, isSelected: false, number: nextCard)
        speak(card: currCard)
    }
    func startGame () {
        isGameRunning =  true
        initGame()
        nextCard()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { _ in
            self.timeCount -= 1
            if self.timeCount <= 1{
                self.nextCard()
            }
        })
    }
    func endGame() {
        timer?.invalidate()
        isGameRunning = false
        currCard = Card.cardBack
        prev1Card = Card.cardBack
        prev2Card = Card.cardBack
        prev3Card = Card.cardBack
        
    }
    func canPlaybean (cardNo: String) -> Bool {
        if rolledCards.contains(cardNo){
            return true
        }else{
            return false
        }
            
    }
    func toggleAssistedPlay(value: Bool){
        self.isAssistedPlayEnabled = value
        userDefaults.set(value, forKey: "Loteria.assistedPlay")
    }
    func toggleCallCards(value: Bool){
        self.isCalledCardEnabled = value
        userDefaults.set(value, forKey: "Loteria.calledCardEnabled")
    }
    func setSelectSpeed(value: Int){
        self.speedGame = value
        userDefaults.set(value, forKey: "Loteria.selectSpeed")
    }
    func setLanguage(value:Int){
        self.en_lang = value == 0
        userDefaults.set(value, forKey: "Loteria.language")
    }
    
    func setFirstHelpShown() {
        self.shownFirstHelp = true
        userDefaults.set(true, forKey: "Loteria.firstHelp909")
    }
    
    func playTap(){
        audioPlayer?.play()
    }
    
    func speak(card: Card){
        guard isCalledCardEnabled == true
        else {
            return
        }
        let utterance = AVSpeechUtterance(string: card.name)
        utterance.voice = self.en_lang ? engVoice : spaVoice
        utterance.pitchMultiplier = 2.0
        synthesizer.speak(utterance)
    }
    
    func setGameWon(){
        endGame()
        didWin = true
    }
    
}
