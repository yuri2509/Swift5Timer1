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
    
    
    var timer = Timer()
    
    var count = Int()
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        count = 0
        
        //startButtonを押せなくする
        stopButton.isEnabled = true
        
        for i in 0..<5{
            
        }
        
    }
    
    func startTimer(){
        
        //タイマーを回す0.2秒ごとにあるメソッドを呼ぶ
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    //0.2秒ごとに呼ばれる
    @objc func timerUpdate(){
        
        count = count + 1
        imageview.image = imageArray[count]
        
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

