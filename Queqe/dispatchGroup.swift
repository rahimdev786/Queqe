//
//  dispatchGroup.swift
//  Queqe
//
//  Created by arshad on 4/22/22.
//

import UIKit


// group of asynchronous operations

class dispatchGroup: UIViewController {
   
    let group = DispatchGroup()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        group.notify(queue: .global(qos: .background)) {
            print("ALL Operation has been done")
        }
    }
}

extension dispatchGroup{
    func background1(){
        DispatchQueue.global(qos: .background).async {
            self.task1()
        }
    }
    
    
    
    func background2(){
        DispatchQueue.global(qos: .background).sync {
            self.task2()
        }
    }
    
    
    func background3(){
        DispatchQueue.global(qos: .background).sync {
            self.task3()
        }
    }
    
    func background4(){
        DispatchQueue.global(qos: .background).async {
            self.task4()
        }
    }
    
}



extension dispatchGroup{
    
    func task1(){
        for i in 0...100{
            print("task1 \(i)")
        }
    }
    
    func task2(){
        for i in 0...20{
            print("task2 \(i)")
        }
    }


    func task3(){
        for i in 0...40{
            print("task3 \(i)")
        }
    }
    
    func task4(){
        for i in 0...200{
            print("task4 \(i)")
        }
    }

}
