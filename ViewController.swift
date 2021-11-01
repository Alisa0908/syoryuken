//
//  ViewController.swift
//  Syoryuken
//
//  Created by 松尾有紗 on 2021/11/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var charaImage: UIImageView!
    
    var imageArrayAttack : Array<UIImage> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        while let attackImage = UIImage(named: "attak\(imageArrayAttack.count+1)") {
                    imageArrayAttack.append(attackImage)
                }
    }

    @IBAction func attackBtn(_ sender: Any) {
        // アニメーションの適用
        charaImage.animationImages = imageArrayAttack
        // 1.5秒間隔
        charaImage.animationDuration = 1
        // 1回繰り返し
        charaImage.animationRepeatCount = 1
        // アニメーションを開始
        charaImage.startAnimating()
    }
}

