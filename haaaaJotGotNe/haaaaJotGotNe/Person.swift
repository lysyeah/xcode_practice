//
//  Person.swift
//  haaaaJotGotNe
//
//  Created by 김응엽 on 2023/04/15.
//

import Foundation
import UIKit

struct Person {
    var name: String?
    var age: String?
    var height: String?
}

class Persons {
    
    var personList: [Person]?
    
}

class Test: ViewController {
    var myPersonList = Persons().personList
    
    var tblView = UITableView()
    var testName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.myPersonList = [Person(name: "이용수", age: "32", height: "184"), Person(name: "김응엽", age: "33", height: "170")]
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tblView.reloadData()
        
        if let newName = myPersonList?[1].name {
            testName = newName
        } else {
            testName = "이름이 입력되지 않았습니다."
        }
    }
}
