//
//  ThirdViewController.swift
//  Work_with_UI
//
//  Created by Валерия Прокушева on 16.07.2021.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var SegmentedControl = UISegmentedControl()
    
    var NumberArray = ["One", "Two", "Three"]
    var ImageArray = [UIImage(named: "Image2.jpeg"), UIImage(named: "Image3.jpeg")]
    
    @objc func selectedValue(target: UISegmentedControl) {
        if target == SegmentedControl{
            print(SegmentedControl.selectedSegmentIndex)
            
            switch SegmentedControl.selectedSegmentIndex {
            case 0:
                
                let TextfieldFirst = UITextField(frame: CGRect(x: 50, y: 50, width: 250, height: 30))
                let TextfieldSecond = UITextField(frame: CGRect(x: 50, y: 100, width: 250, height: 30))
                let GreenView = UIView(frame: CGRect(x: 0, y: 0, width: 350, height: 500))
                
                GreenView.center = view.center
                
//                TextfieldFirst.center = GreenView.center
                TextfieldFirst.backgroundColor = .yellow
                
//                TextfieldSecond.center = GreenView.center
                TextfieldSecond.backgroundColor = .white
//                GreenView.alpha = 0.5
                
                GreenView.backgroundColor = .green
                GreenView.addSubview(TextfieldFirst)
                GreenView.addSubview(TextfieldSecond)
                
                view.addSubview(GreenView)
            
            case 1:
                
                let BlueView = UIView(frame: CGRect(x: 200, y: 300, width: 350, height: 500))
                let FirstButton = UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 30))
                let SecondButton = UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 30))
                
                BlueView.center = view.center
                
//                BlueView.alpha = 0.3
                BlueView.backgroundColor = .systemBlue
                BlueView.addSubview(FirstButton)
                BlueView.addSubview(SecondButton)
                
                FirstButton.titleLabel?.text = "Первая кнопка"
                FirstButton.tintColor = .red
                SecondButton.titleLabel?.text = "Вторая кнопка"
                SecondButton.tintColor = .black
                
                view.addSubview(BlueView)
                view.addSubview(FirstButton)
                view.addSubview(SecondButton)
                
            default:
                
                let PurpleView = UIView(frame: CGRect(x: 200, y: 300, width: 350, height: 600))
                let FirstImageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 330, height: 260))
                let SecondImageView = UIImageView(frame: CGRect(x: 10, y: 310, width: 330, height: 260))
                
                PurpleView.center = view.center
                
                FirstImageView.image = ImageArray[0]
                SecondImageView.image = ImageArray[1]
                
                PurpleView.backgroundColor = .purple
                PurpleView.addSubview(FirstImageView)
                PurpleView.addSubview(SecondImageView)
                
                view.addSubview(PurpleView)
                view.addSubview(FirstImageView)
                view.addSubview(SecondImageView)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        SegmentedControl = UISegmentedControl(items: NumberArray)
        SegmentedControl.frame = CGRect(x: 100, y: 100, width: 200, height: 30)
        view.addSubview(SegmentedControl)
        
        SegmentedControl.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
    }

}
