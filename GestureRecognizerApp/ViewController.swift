//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Ayub Ali on 2021-03-12.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isTonyStark = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    @objc func changePic(){
        
        
        if isTonyStark == true{
            imageView.image = UIImage(named: "tony1")
            myLabel.text = "Tony Stark"
            isTonyStark = false
        }else {
            imageView.image = UIImage(named: "blackPanther")
            myLabel.text = "Black Panther"
            isTonyStark = true
        }
        
    }

}

