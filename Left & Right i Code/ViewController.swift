//
//  ViewController.swift
//  Left & Right i Code
//
//  Created by Aleksandr Khalupa on 28.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let image:[UIImageView] = [UIImageView(), UIImageView(),UIImageView(), UIImageView(), UIImageView(),UIImageView(), UIImageView(), UIImageView(),UIImageView(), UIImageView(), UIImageView(),UIImageView()]
    
    let leftButton = UIButton(type: .system)
    let rigthButton = UIButton(type: .system)
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
    }

    
    @objc func pressedButton(_ sender:UIButton){
        
        
        
        if sender.tag == 1 && count > 0{
            
            image[count].image = UIImage(named: "Like")
            count -= 1
            print("worked1: \(count)")
            image[count].image = UIImage(named: "Exe")
            
            
        }else if sender.tag == 2 && count < image.count - 1{
            
            image[count].image = UIImage(named: "Like")
            count += 1
            image[count].image = UIImage(named: "Exe")
            print("worked2: \(count)")
        }
        
    }

    
    func setUI(){
        
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
//
        rigthButton.addTarget(nil, action: #selector(pressedButton), for: .touchUpInside)
        rigthButton.tag = 2
        
        let width = view.frame.width / 3 - 20
        let heigth = width
        
        view.addSubview(image[0])
        image[0].frame = CGRect(x: 10, y: view.frame.height / 9, width: width, height: heigth)
        image[0].image = UIImage(named: "Exe")
        print("Wight 1image\(image[0].frame.width)")
        
        view.addSubview(image[1])
        image[1].frame = CGRect(x: view.frame.width / 3 + 10, y: view.frame.height / 9, width: width, height: heigth)
        image[1].image = UIImage(named: "Like")
        print("Wight 1image\(image[1].frame.width)")
        
        view.addSubview(image[2])
        image[2].frame = CGRect(x: view.frame.width - width - 10, y: view.frame.height / 9, width: width, height: heigth)
        image[2].image = UIImage(named: "Like")
        print("Wight 1image\(image[2].frame.width)")
        
        
        
        view.addSubview(image[3])
        image[3].frame = CGRect(x: 10, y: view.frame.height / 4, width: width, height: heigth)
        image[3].image = UIImage(named: "Like")
        print("Wight 1image\(image[0].frame.width)")
        
        
        view.addSubview(image[4])
        image[4].frame = CGRect(x: view.frame.width / 3 + 10, y: view.frame.height / 4, width: width, height: heigth)
        image[4].image = UIImage(named: "Like")
        print("Wight 1image\(image[1].frame.width)")
        
        view.addSubview(image[5])
        image[5].frame = CGRect(x: view.frame.width - width - 10, y: view.frame.height / 4, width: width, height: heigth)
        image[5].image = UIImage(named: "Like")
        print("Wight 1image\(image[2].frame.width)")
        
        
        view.addSubview(image[6])
        image[6].frame = CGRect(x: 10, y: view.frame.height / 2.55, width: width, height: heigth)
        image[6].image = UIImage(named: "Like")
        print("Wight 1image\(image[0].frame.width)")
        
        
        view.addSubview(image[7])
        image[7].frame = CGRect(x: view.frame.width / 3 + 10, y: view.frame.height / 2.55, width: width, height: heigth)
        image[7].image = UIImage(named: "Like")
        print("Wight 1image\(image[1].frame.width)")
        
        view.addSubview(image[8])
        image[8].frame = CGRect(x: view.frame.width - width - 10, y: view.frame.height / 2.55, width: width, height: heigth)
        image[8].image = UIImage(named: "Like")
        print("Wight 1image\(image[2].frame.width)")
        
        
        view.addSubview(image[9])
        image[9].frame = CGRect(x: 10, y: view.frame.height / 1.88, width: width, height: heigth)
        image[9].image = UIImage(named: "Like")
        print("Wight 1image\(image[0].frame.width)")
        
        view.addSubview(image[10])
        image[10].frame = CGRect(x: view.frame.width / 3 + 10, y: view.frame.height / 1.88, width: width, height: heigth)
        image[10].image = UIImage(named: "Like")
        print("Wight 1image\(image[1].frame.width)")
        
        view.addSubview(image[11])
        image[11].frame = CGRect(x: view.frame.width - width - 10, y: view.frame.height / 1.88, width: width, height: heigth)
        image[11].image = UIImage(named: "Like")
        print("Wight 1image\(image[2].frame.width)")

        
    }
    
}

