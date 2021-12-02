//
//  FirstViewController.swift
//  Work_with_UI
//
//  Created by Валерия Прокушева on 09.07.2021.
//

import UIKit

class FirstViewController: UIViewController {
    
    var number = 0
    var images:[String] = ["Image0.jpeg",
        "Image1.jpeg",
        "Image2.jpeg",
        "Image3.jpeg",
        "Image4.jpeg",
        "Image5.jpeg",
        "Image6.jpeg",
        "Image7.jpeg",
        "Image8.jpeg",
        "Image9.jpeg"
    ]
    var currentIndexCount = 0
    
    func ShowImage(index: Int){
        switch index {
        case images.count:
            ImageView.image = UIImage(named: images[0])
            currentIndexCount = 0
        case -1:
            ImageView.image = UIImage(named: images[images.count - 1])
            currentIndexCount = images.count - 1
        default:
            ImageView.image = UIImage(named: images[index])
        }
    }
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBAction func BackButton(_ sender: Any) {
        
        currentIndexCount -= 1
        ShowImage(index: currentIndexCount)
    }
    
    @IBAction func ForwardButton(_ sender: Any) {
    
        currentIndexCount += 1
        ShowImage(index: currentIndexCount)
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
        ImageView.image = UIImage(named: images[currentIndexCount])
            
        }
}
