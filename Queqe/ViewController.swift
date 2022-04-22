//
//  ViewController.swift
//  Queqe
//
//  Created by arshad on 4/22/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundThread5()

        
    }

    
}


extension ViewController{
    //MARK: - Giving name for Thread
    func Thread1(){
        Thread.current.name = "Main Thread for this APP"
        let t1 = Thread.current.name
        print(t1!)
        print(Thread.current.isMainThread)
    }

  //MARK: - BackGround Thread with Queqe

    func backgroundThread1(){
     
        DispatchQueue.global().async {
            self.task1()
        }
        
    }

    func backgroundThread2(){
     
        DispatchQueue.global(qos: .background).async {
            self.task2()
        }
        
    }


    
    func backgroundThread3(){
     
        DispatchQueue.global().sync {
            self.task3()
        }
        
    }

    func backgroundThread4(){
     
        DispatchQueue.global().sync {
            self.task4()
        }
        
    }
    
    func backgroundThread5(){
        
//        DispatchQueue.global().sync {
//            self.task4()
//        }
        
        // this and above this also same
        let dispatch = DispatchQueue(label: "com.backgroundThread", target: .global())
        
        dispatch.async {
            self.task1()
        }
        
        dispatch.async {
            self.task3()
        }
    }
    
}


extension ViewController{
    func task1(){
        for i in 0...10{
            print("task1 \(i)")
        }
    }
    
    func task2(){
        for i in 0...10{
            print("task2 \(i)")
        }
    }


    func task3(){
        for i in 0...10{
            print("task3 \(i)")
        }
    }
    
    func task4(){
        for i in 0...10{
            print("task4 \(i)")
        }
    }
}

