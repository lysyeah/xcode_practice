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
        
        
        weak을 하는 이유는 ARC메모리 관리 방법 때문인데, 메모리 누구를 방지하기 위함이다.
        풀어서 얘기를 해보자.
        무작정 weak을 쓰는 것이 아니고, protocol에서 오직 이 프로토콜은 이 클래스에서만 사용이 가능하다라는 것이 명시되어 있어야한다.
        protocol이 class or AnyObject를 상속받지 않는다면 모든 곳에서 채택이 가능하다.
     
        명시하는 방법의 예시는 아래와 같다.
        Protocol DeliveryDataProtocol : class {
            func deliveryData(_data : String){
                dataLabel.isHidden = false dataLabel.text = data
            }
        }
     
        여기에서
        {
        dataLabel.isHidden = false dataLabel.text = data
        }
        가 기능 구현이다.
        
        이거 위에 것들은
        선언만 한것이다.
     
        weak 과 strong 의 차이는 무엇일까
        https://co-dong.tistory.com/60
    */
    
    @IBOutlet weak var tableView_custom: UITableView!
    let cellName: String = "customCell"
    let cellName2: String = "customCell2"
    let cellName3: String = "customCell3"
    
    // sender는 해당 메소드를 호출하는 caller를 말한다.
    // 즉, sender는 이 메소드의 caller이다.
    /*
     @IBAction func buttonPressed(sender: AnyObject) {

         let button = sender as UIButton
         println("Button \(button.tag) was pressed!")
     }
     */
    @IBAction func mySwitch(_ sender: UISwitch){
        
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
    
    
    
    /*
        override에 대해서 공부해보자.
        애플 공식 문서에서는 오버라이드를 다음과 같이 정의합니다.
     
        "하위 클래스는 슈퍼클래스로부터 상속되는
        인스턴스 메서드,
        유형 메서드,
        인스턴스 속성,
        유형 속성 또는 구독자의 고유한 사용자 지정 구현을 제공할 수 있습니다.
        이것을 오버라이딩이라고 합니다."
       
        https://velog.io/@wook4506/iOS-Swift-Swift-%EB%AC%B8%EB%B2%95%EC%9D%84-%EC%95%8C%EC%95%84%EB%B3%B4%EC%9E%90-19%ED%8E%B8-%EC%98%A4%EB%B2%84%EB%9D%BC%EC%9D%B4%EB%93%9C-override
     
     */
    override func viewDidLoad() {
        // super VS final 상속받을 수 있다/없다
        // super는 프로퍼티를 쓸 수 있고
        // final은 프로퍼티를 쓸 수 없다.
        // 지금 경우는 super을 썼기 때문에 하위클래스가 viewDidLoad()를 상속받아서 쓸 수 있다.
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView_custom.delegate = self
        tableView_custom.dataSource = self
      
    }
}
// 여기까지가 class ViewController: UIViewController




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
