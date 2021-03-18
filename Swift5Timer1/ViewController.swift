//
//  ViewController.swift
//  Swift5Timer1
//
//  Created by ゆり on 2021/03/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!

    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //startButtonを押せなくする
        stopButton.isEnabled = true
        
    }

    
    @IBAction func start(_ sender: Any) {
        
        //startButtonを押せなくする
        startButton.isEnabled = true
    }
    
    
    
    @IBAction func stop(_ sender: Any) {
        
        //startButtonを押せるようにする
        startButton.isEnabled = false
        
    }
    
}

