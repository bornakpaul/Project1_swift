//
//  ViewController.swift
//  Project1
//
//  Created by Bornak Paul on 02/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl"){
                // load the images here
                pictures.append(item)
            }
        }
        
        //print(pictures)
        
    }


}

