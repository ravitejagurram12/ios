//
//  ViewController.swift
//  Gurram_SearchApp
//
//  Created by Gurram,Sai Venkata Raviteja on 3/21/23.
//

import UIKit

class ViewController: UIViewController {
    var topics_array = ["dogs","fishes","monkeys"]
    var dogs = [["pug","The pug is a type of dog with a wrinkly face. It also has a curled tail, and pug puppies are called puglets. The pug has a square, muscular body with a large head, big eyes, and small ears."],["pitbull","A pit bull is a fighting dog developed in 19th-century England, Scotland, and Ireland from bulldog and terrier ancestry for hunting. It is also called an American Pit Bull Terrier. The American Kennel Club does not recognize pit bulls as a distinct breed, but other organizations do."],["husky","The pug is a type of dog with a wrinkly face. It also has a curled tail, and pug puppies are called puglets. The pug has a square, muscular body with a large head, big eyes, and small ears."],["germansheperd","German Shepherd Dog is a large, agile, muscular dog of noble character and high intelligence. Loyal, confident, courageous, and steady, the German Shepherd is truly a dog lover's delight"],["goldenrtr","The Golden Retriever is a sturdy, muscular dog of medium size, famous for the dense, lustrous coat of gold that gives the breed its name. The broad head, with its friendly and intelligent eyes, short ears, and straight muzzle, is a breed hallmark."]]
    var fishes = [["ranchu","Nicknamed “King of Goldfish” by the Japanese as they are highly prized with some selling for hundreds of dollars. They were developed from the Lionhead variety and are distinct as they lack any dorsal fin."],["pearlscale","Pearlscale goldfish are a fascinating freshwater fish with quite a unique appearance. Because of this, there’s a long list of aquarists who are interested in owning them as pets."],["lionhead","The Lionhead Goldfish is a great addition to any freshwater aquarium. These fishes mature to around eight inches with raised scales and fantail that sets them apart from other goldfish. They’re herbivorous fish with minimal maintenance needs, though they do require a tank with plenty of filtration since they produce a lot of bioload."],["gold","Goldfish are golden-yellow or orange fish that live as pets in fish tanks and human-made ponds. They are freshwater fish so they can't live in salty water"],["blackmoor","The Black Moor Goldfish has metallic black scales and telescope eyes. They are very hardy and will eat just about anything that is fed to them. Like most goldfish, the Black Moor will get quite large and will need a large aquarium or pond when full grown."]]
    var monkeys = [["emperortamarin","Emperor tamarins are small monkeys with long, white whiskers that sweep back from the muzzle on both sides and look like mustaches. It is believed that they were named after German emperor Wilhelm II, who also wore a mustache.  They have dark fur on their faces and ears, and their bodies are primarily gray with small amounts of gold, white and red."],["goldenliontamarin","Golden lion tamarins move quadrupedally through the trees and can spring and leap between branches and vines. In the early 1970s, there were as few as 200 golden lion tamarins in the wild. They were upgraded from critically endangered to endangered in 2003 following intensive conservation efforts."],["goldensnubnosed","The golden snub-nosed monkey[3] (Rhinopithecus roxellana) is an Old World monkey in the subfamily Colobinae.[3] It is endemic to a small area in temperate, mountainous forests of central and Southwest China.[4] They inhabit these mountainous forests of Southwestern China at elevations of 1,500–3,400 m (4,900–11,200 ft) above sea level.[5] The Chinese name is Sichuan golden hair monkey (四川金丝猴). It is also widely referred to as the Sichuan snub-nosed monkey."],["panamanianwhitefacedcapuchin","The Panamanian white-faced capuchin (Cebus imitator), also known as the Panamanian white-headed capuchin or Central American white-faced capuchin, is a medium-sized New World monkey of the family Cebidae, subfamily Cebinae. Native to the forests of Central America, the white-faced capuchin is important to rainforest ecology for its role in dispersing seeds and pollen."],["probscis","Proboscis monkeys are the primate world's most prolific swimmers, frequently leaping from tree limbs and hitting the water with a comical belly flop. They've evolved webbed feet and hands to help them outpace the crocodiles that are some of their main predators."]]
    
    
    var dogs_keywords = ["Dogs","Dog","pug","pitbull","dogs","Dogs","puppies","puppy"]
    
    var fish_keywords = ["fishes","Fishes","Fish","fish","goldenfish"]
    
    var monkeys_keywords = ["monkey","chimpange","goldenmonkey","tamarin","monkeys"]
    
    var topics = -1
    var index = 0
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var searchOutlet: UIButton!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var previousBtnOutlet: UIButton!
    
    @IBOutlet weak var resetBtnOutlet: UIButton!
    
    @IBOutlet weak var nextBtnOutlet: UIButton!
  
    @IBAction func textEntered(_ sender: UITextField) {
        searchOutlet.isEnabled=true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hidenButtons()
        resultImage.image=UIImage(named: "welcome1")
        searchOutlet.isEnabled=false
    }


    @IBAction func searchButtonAction(_ sender: UIButton) {
        previousBtnOutlet.isHidden=false
        resetBtnOutlet.isHidden=false
        nextBtnOutlet.isHidden=false
        index = 0
        if(dogs_keywords.contains(searchTextField.text!)){
            topics = 1
        }
        else if(fish_keywords.contains(searchTextField.text!)){
            topics = 2
        }
        else if(monkeys_keywords.contains(searchTextField.text!)){
            topics = 3
        }
        else{
            topics = 0
        }
        if(topics == 0){
            resultImage.image=UIImage(named: "noresults")
            hidenButtons()
            topicInfoText.text=""
        }
        else if(topics==1){
            resultImage.image=UIImage(named: dogs[index][0])
            topicInfoText.text=dogs[index][1]
            enableButtons()
            previousBtnOutlet.isEnabled=false
            nextBtnOutlet.isEnabled=true
        }
        else if(topics==2){
            resultImage.image=UIImage(named: fishes[index][0])
            topicInfoText.text=fishes[index][1]
            enableButtons()
            previousBtnOutlet.isEnabled=false
            nextBtnOutlet.isEnabled=true
        }
        else if(topics==3){
            resultImage.image=UIImage(named: monkeys[index][0])
            topicInfoText.text=monkeys[index][1]
            enableButtons()
            previousBtnOutlet.isEnabled=false
            nextBtnOutlet.isEnabled=true
       }
    }
    
    @IBAction func ShowPrevImagesBtn(_ sender: UIButton) {
        index=index-1
        updateDetails(_index: index)
        nextBtnOutlet.isEnabled=true
        if(index==0||index==0||index==0){
            previousBtnOutlet.isEnabled=false
            
        }
    }
    
    
    @IBAction func ResetBtn(_ sender: UIButton) {
        searchTextField.text=""
        topicInfoText.text=""
        hidenButtons()
        searchOutlet.isEnabled=false
        resultImage.image=UIImage(named: "welcome1")
    }
    
    

    @IBAction func ShowNextImagesBtn(_ sender: UIButton) {
        index=index+1
        updateDetails(_index: index)
        previousBtnOutlet.isEnabled=true
        if(index==dogs.count-1||index==fishes.count-1||index==monkeys.count-1){
            nextBtnOutlet.isEnabled=false
        }
    }
    
    func updateDetails(_index:Int){
        if(topics==1){
            resultImage.image=UIImage(named: dogs[index][0])
            topicInfoText.text=dogs[index][1]
        }
        else if(topics==2){
            resultImage.image=UIImage(named: fishes[index][0])
            topicInfoText.text=fishes[index][1]
            
        }
        else if(topics==3){
            resultImage.image=UIImage(named: monkeys[index][0])
            topicInfoText.text=monkeys[index][1]
        }
    }
    
    func hidenButtons(){
        previousBtnOutlet.isHidden=true
        resetBtnOutlet.isHidden=true
        nextBtnOutlet.isHidden=true
    }
    func enableButtons(){
        previousBtnOutlet.isEnabled=true
        resetBtnOutlet.isEnabled=true
        nextBtnOutlet.isEnabled=true
    }
    

}

