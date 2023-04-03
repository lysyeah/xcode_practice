//
//  ViewController.swift
//  haaaaJotGotNe
//
//  Created by 이용수 on 2023/03/22.
//

import UIKit

class ViewController: UIViewController {
    /*
        스토리 보드에서 작업한 UI객체를 코드에 연결하기 위해서는
        IBOutlet 또는 IBAction을 사용해서 연결해야한다.
        
        weak 과 strong 의 차이는 무엇일까
        https://co-dong.tistory.com/60
    */
    
    @IBOutlet weak var tableView_custom: UITableView!
    let cellName: String = "customCell"
    let cellName2: String = "customCell2"
    let cellName3: String = "customCell3"
    
    
    @objc func mySwitch(_ sender: UISwitch){
        if sender === cellName {
            
        }else if === cellName2 {
            
        }else if === cellName3{
            
        }
        
        switch sender {
            case button1:
            case button2:
            case button3:
            
        }
    }
    
    
    /*
    아래 배열 방법은 '동적 배열'이다.
    <>기호를 사용하여 배열 값의 데이터 타입을 지정하는 문법을 제네릭(Generic)이라고 한다.
   
    var food = Array<String> ()
    초기화하지 않고, 배열을 선언만 해봅시다.
    이렇게 되면 배열은초기화되지 않았으므로 아직 메모리 공간을 할당받지 않은 상태이다.
    메모리 공간을 할당받으려면 초기화를 해야한다.
    
    var food : Array<String>
    배열이 비어있는지 확인하는 방법
    
    var list = [String]()
     
    if list.isEmpty{
          pring("배열이 비어있다.")
     }else{
          pring("배열에는 \(list.count)개가 있다.")
     }
     
     배열에 데이터 삽입1
     append()를 사용하여 마지막에 추가하기.
     var food = [String]()
     food.append("pizza")
     food.append("hamburger")
     // ["pizza", "hamburger"]
     
     배열에 데이터 삽입2
     food.insert("chicken", at:1)
     // ["pizza","hamburger", "hamburger"]
     
     
     배열에 데이터 삽입3 - 여러개 마지막에 추가하기.
     food.append(contentsOf: ["taco", "bacon"]
     // ["pizza","hamburger", "hamburger", "taco", "bacon"]
     
    */
    
    let cellTitle : Array<String> = ["pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView_custom.delegate = self
        tableView_custom.dataSource = self
      
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView_custom.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CustomCell
        // dequeueReusableCell(withIdentifier:for:) 에 대한 정보. 이해가 잘 되지 않는다.
        // https://kiljh.tistory.com/232
               
        let customCell2 = tableView_custom.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CustomCell
        
        let customCell3 = tableView_custom.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CustomCell
        
        customCell.imageView_custom.image = UIImage(systemName: cellTitle[indexPath.row])
        customCell.label_custom.text = cellTitle[indexPath.row]
        
        
        /*
        밑에처럼하니까 마지막 줄인 user로 모두 바뀐다.
        if문을 써야할까
         */
        
        
        if ((customCell.button_custom.imageView?.image = UIImage(named: "pencil")) != nil) {
            return customCell
        }else{
            customCell2.button_custom.imageView?.image = UIImage(named: "doc.circle")
        };else{
            customCell3.button_custom.imageView?.image = UIImage(named: "doc.circle")
        }
        //customCell.button_custom.imageView?.image = UIImage(named: "search")
        //customCell.button_custom.imageView?.image = UIImage(named: "user")
        
        //pencil 일때 써치
        //doc.circle 유저
        //bolt.circle 휴지통
        return customCell
    }
   
    
}
