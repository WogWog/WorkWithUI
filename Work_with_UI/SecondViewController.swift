//
//  SecondViewController.swift
//  Work_with_UI
//
//  Created by Валерия Прокушева on 09.07.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    let images = [UIImage(named:"10 000$.jpeg"), UIImage(named:"14 000$.jpeg"), UIImage(named:"20 000$.jpeg"), UIImage(named:"15 000$.jpeg")]
    let names  = ["10 000$", "13 000$", "15 000$", "20 000$"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let screenWidth = Double(self.view.frame.width)
        let imageWidth = screenWidth / 2 - 10 - 10
        let imageHeight = imageWidth * 1.5
        
        var CoordinateX = 0
        var CoordinateY = 0
        var stepY = 0
        var PositonImage = 0

        
        for i in 0...images.count - 1{
            
            if i % 2 == 0 && PositonImage % 2 == 0{
                CoordinateX = 15
                stepY += 1
            } else {
                CoordinateX = 220
            }
            
            PositonImage += 1
            CoordinateY = stepY * 170
 
            let lableView = UILabel()
            lableView.text = "Цена: \(names[i])"
            
            let imageView = UIImageView()
            imageView.image = images[i]
            
            if i == 0 || i == 1 {
                        
                        imageView.frame = CGRect(x: CoordinateX, y: 50, width: Int(imageWidth), height: Int(imageHeight))
//                imageView.isHidden = true
                
                lableView.frame = CGRect(x: Double(CoordinateX) + 30, y: 50 + 130, width: imageWidth + 20, height: imageHeight + 20)

                    } else {

                        imageView.frame = CGRect(x: CoordinateX, y: CoordinateY, width: Int(imageWidth), height: Int(imageHeight))
//                        imageView.isHidden = true
                        
                        
                        lableView.frame = CGRect(x: CoordinateX + 30, y: CoordinateY + 130, width: Int(imageWidth) + 10, height: Int(imageHeight) + 10)
                    }

                    view.addSubview(imageView)
                    view.addSubview(lableView)
            }
        }
    }




