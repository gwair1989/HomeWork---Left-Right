//
//  ViewController.swift
//  Left & Right i Code
//
//  Created by Aleksandr Khalupa on 28.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var image:[UIImageView] = []
    
    let leftButton = UIButton(type: .system)
    let rigthButton = UIButton(type: .system)
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }

    
    @objc func pressedButton(_ sender:UIButton){
        if sender.tag == 1 && count > 0{
            image[count].image = UIImage(named: "Like")
            count -= 1
            image[count].image = UIImage(named: "Exe")
        }else if sender.tag == 2 && count < image.count - 1{
            image[count].image = UIImage(named: "Like")
            count += 1
            image[count].image = UIImage(named: "Exe")
        }
    }

    
    func setUI(){
        
        let width = view.frame.width / 3 - 20
        let heigth = width
        
        for _ in 0..<12 {
            let image = UIImageView()
            image.frame.size = CGSize(width: width, height: heigth)
            self.image.append(image)
            self.view.addSubview(image)
            image.image = UIImage(named: "Like")
            self.image[0].image = UIImage(named: "Exe")
        }
        
        view.backgroundColor = .systemOrange

        view.addSubview(leftButton)
        leftButton.frame = CGRect(x: 10, y: view.frame.height / 1.3, width: view.frame.width / 2 - 10, height: 130)
        leftButton.backgroundColor = .systemIndigo
        leftButton.setTitle("Left", for: .normal)
        leftButton.titleLabel?.font = .systemFont(ofSize: 40)
        leftButton.setTitleColor(.white, for: .normal)
        leftButton.tag = 1
        leftButton.addTarget(nil, action: #selector(pressedButton), for: .touchUpInside)
        
        view.addSubview(rigthButton)
        rigthButton.frame = CGRect(x: leftButton.frame.width + 20, y: view.frame.height / 1.3, width: view.frame.width / 2 - 20, height: 130)
        rigthButton.backgroundColor = .systemPurple
        rigthButton.setTitleColor(.white, for: .normal)
        rigthButton.setTitle("Right", for: .normal)
        rigthButton.titleLabel?.font = .systemFont(ofSize: 40)
        rigthButton.addTarget(nil, action: #selector(pressedButton), for: .touchUpInside)
        rigthButton.tag = 2
        
        image[0].frame.origin = CGPoint(x: 10, y: view.frame.height / 9)
        image[1].frame.origin = CGPoint(x: view.frame.width / 3 + 10, y: view.frame.height / 9)
        image[2].frame.origin = CGPoint(x: view.frame.width - width - 10, y: view.frame.height / 9)
        image[3].frame.origin = CGPoint(x: 10, y: view.frame.height / 4)
        image[4].frame.origin = CGPoint(x: view.frame.width / 3 + 10, y: view.frame.height / 4)
        image[5].frame.origin = CGPoint(x: view.frame.width - width - 10, y: view.frame.height / 4)
        image[6].frame.origin = CGPoint(x: 10, y: view.frame.height / 2.55)
        image[7].frame.origin = CGPoint(x: view.frame.width / 3 + 10, y: view.frame.height / 2.55)
        image[8].frame.origin = CGPoint(x: view.frame.width - width - 10, y: view.frame.height / 2.55)
        image[9].frame.origin = CGPoint(x: 10, y: view.frame.height / 1.88)
        image[10].frame.origin = CGPoint(x: view.frame.width / 3 + 10, y: view.frame.height / 1.88)
        image[11].frame.origin = CGPoint(x: view.frame.width - width - 10, y: view.frame.height / 1.88)

    }
    
}

