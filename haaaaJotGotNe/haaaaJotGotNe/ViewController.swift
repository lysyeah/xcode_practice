//
//  ViewController.swift
//  haaaaJotGotNe
//
//  Created by 이용수 on 2023/03/22.
//

import UIKit

// ViewController는 UIViewController을 상속받겠다는 말이다.
class ViewController: UIViewController, PopupDelete  {
    //여기에 PopupDelete를 넣은것은 안테나 연결은 했다는 걸로 생각하자. 그러면 이제 연결을 해줘야한다.
    // MARK: Optional이란?
    
    
    /* optional을 쓰는 이유:
        swift는 일반적으로 아래와 같은 언어이다.
        Safe, Fast, Expressive 이다.
        옵셔널을 통해 swift는 안정성을 제공한다. 그리고 프로그래머들 간의 원활한 커뮤니케이션을 위해 사용한다.
        코드만으로도 변수들이 어떤 타입을 가질지 명확하게 보여주며 함수의 파라미터 부분만 봐도 여기에 어떠한 값들이
        들어올 수 있는지 추축이 가능하기 때문이다.
     */
     
    
    /* Question 1. 플러스에 왜 에러가 있지? 그리고 test()에는 왜 에러가 있지?
        
        func 별명test(newValue number1 : Int, oldValue number2 : Int) -> {
            return number1 + number2
        }
        
        func test() {
            print(별명test(newnumber1:3, oldNumber2:5))
        }
    */
    
    /*
        // 기본적으로 변수에는 nil이 들어갈 수 없다. optional: nil값에 비어 있을수도 있다고 표현.
        var variable : Int? // 변수에 값이 없을 수도 있다는 표현이다.
        var sum = variable! + variable! // unwrapping이라는 의미이다. 이 식에서 값이 있다고 확신한다는 표현을 쓸 떄 !을 쓰면된다.
                                        // 만약 값이 없으면 지금처럼 에러가 뜬다.
        if let nonOptionalVariable = optionalValiable{연산} => optional binding 기술인데, !을 사용하지 않고 새로운 상수를 선언하고, 상수에 옵셔널 변수의 값을 넣어보고,
                                                                nil이 아니면 연산에 사용하는 방식이다. 추후에 자세히 공부해보자.
     
        optional은 nil value값 or type casting 체크 등에 중요한 역할을 한다.
        swift는 기본적으로 nil값을 허용하지 않는다. => runtime error 혹은 compile error가 생긴다.
     
        optional casting 기능도 있다. = > ?을 쓰지 않고도 가능하다.
        let a = "123"
        let b = Int(a)
        print(b) // Optional(123)라고 출력된다.
        여기서 swift는 b를 optional Int형으로 선언한다.
     
        var optionalString : String?
        var optionalString : String? = nil
        이 둘은 같은 말이다. 보기 좋게 nil도 넣어서 표현하자.
     
        var value1 : String? = nil
            print(value1) // nil이 출력된다.
        var value2 : String! = nil
            print(value2) // error가 뜬다. 왜냐하면 실제 값이 필요한데 없기 때문이다.
     
        
     
        Optional에 대해서 예시를 보자.
        class Square {
            var sideLength : Double
            init(sideLength : Double){
                self.sideLength = sideLength
            {
        }
        
        // 1번 예시 * 근데 여기서 Square자리는 타입자리인데 Int같은 타입이 아니어도 괜찮네?
        let optionalSquare1 : Square? = Square(sideLength :2.5)
        let sideLength1 = optionalSquare1.sideLength
            print(optionalSquare1) // optional(Square)
            print(sideLength1)     // optional(2.5)
            print(sideLength1!)     // 2.5
     
        // 2번 예시
        let optionalSquare2 : Square? = Square(sideLength :2.5)
        let sideLength2 = optionalSquare2!.sideLength
            print(opitionalSquare2) //  optional(Square)
            print(sideLength2)      //  2.5
            print(sideLength2!)     //  error
     
        //  3번 예시
        let optionalSquare3 : Square! = Square(sideLength: 2.5)
        let sideLength3 = optionalLength3!.sideLength
            print(optionalSquare3)  //  Square
            print(sideLength3)      //  2.5
            print(sideLength3!)     //  error
        
    */
    
    
    
    var userName: String? = "name"
    // print(userName) -> Optional("name")
    var userName2: String = "name"
    // print(userName2) -> "name"
    
    
    
    
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
    @IBOutlet weak var OnCreatePopupBtnClicked: UIButton!
    let AlertPopupVC : String = ""
    
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
     
     이것도 참고해보자.
     import UIKit

     class ViewController: UIViewController {

         override func viewDidLoad() {
             super.viewDidLoad()
         }
         
         @IBAction func touchedButton(sender:UIButton) {
             if sender.tag==0 {
                 
             }
             else if sender.tag==1 {
                 
             }
             else if sender.tag==2 {
                 
             }
         }
     }
     */
    
    @IBAction func OnCreatePopupBtnClicked(_ sender: UIButton) {
        print("ViewController - OnCreatePopupBtnClicked() called")
        //스토리보드 가져오기
        let storyboard = UIStoryboard.init(name: "PopUp", bundle: nil)
        // 스토리보드를 통해 뷰컨트롤러 가져오기
        let customPopupVC = storyboard.instantiateViewController(withIdentifier: AlertPopupVC) as! CustomPopupViewController
        customPopupVC.naverBtnCompletionClosure={
            print("컴플레션 블럭이 호출되었다.")
            let naverUrl = URL(string : "www.naver.com")
            
        }
        customPopupVC.myPopupDelegate = self
    }
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
    
    let cellTitle : Array<String> = ["pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle", "bolt.circle", "pencil.circle", "doc.circle"]
    
    
    
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
        // TODO: 숙제 - viewController life cycle 설명 - 클리어
        // TODO: 숙제 - optional 설명 - 클리어
        // super VS final 상속받을 수 있다/없다
        // super는 프로퍼티를 쓸 수 있고
        // final은 프로퍼티를 쓸 수 없다.
        // 지금 경우는 super을 썼기 때문에 하위클래스가 viewDidLoad()를 상속받아서 쓸 수 있다.
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView_custom.delegate = self
        tableView_custom.dataSource = self
        
        sangSock_method()
        
      
    }
    
    func sangSock_method() {
        print("ViewDidLoad!!!")
    }
    //MARK: popupDelegate Methods
    func goToNaver() {
        print("ViewController - goToNaver() called")
    }
}
// 여기까지가 class ViewController: UIViewController




extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let customCell = tableView_custom.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CustomCell
        // dequeueReusableCell(withIdentifier:for:) 에 대한 정보. 이해가 잘 되지 않는다.
        // https://kiljh.tistory.com/232
               
//        let customCell2 = tableView_custom.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CustomCell
//
//        let customCell3 = tableView_custom.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CustomCell
//
        
        let title = cellTitle[indexPath.row]
        
        customCell.imageView_custom.image = UIImage(systemName: title)
        customCell.label_custom.text = title
        
//        if title.contains("pencil") {
//            customCell.button_custom.imageView?.image = UIImage(named: "search")
//        } else if title.contains("doc") {
//            customCell.button_custom.imageView?.image = UIImage(named: "user")
//        } else {
////            customCell.button_custom.imageView?.image = UIImage(named: "trash")
//        }
        
        /*
        밑에처럼하니까 마지막 줄인 user로 모두 바뀐다.
        if문을 써야할까
         */
        
        
//        if ((customCell.button_custom.imageView?.image = UIImage(named: "pencil")) != nil) {
//            return customCell
//        } else {
//            customCell2.button_custom.imageView?.image = UIImage(named: "doc.circle")
//        } else {
//            customCell3.button_custom.imageView?.image = UIImage(named: "doc.circle")
//        }
        //customCell.button_custom.imageView?.image = UIImage(named: "search")
        //customCell.button_custom.imageView?.image = UIImage(named: "user")
        
        //pencil 일때 써치
        //doc.circle 유저
        //bolt.circle 휴지통
        
        return customCell
    }
   // TODO: 숙제 - 프로토콜 기본적인걸로 구현해서 적용해보기 2023.4.14 -> https://www.youtube.com/watch?v=e4-QBhnHmE4 참고할거야. 프로토콜-델리게이트 패턴
    
    
    // TODO: 숙제-Clear 2023.4.10: Array 0index를 클릭했는데 다른 버튼도 클릭이 된것처럼 이미지가 바뀌었다. 왜그런것인가?
    // customcell에서
    /*
     if label_custom.text!.contains("pencil") {
         button_custom.setImage( UIImage(named: "search"), for: .normal)
     } else if label_custom.text!.contains("doc") {
         button_custom.setImage( UIImage(named: "user"), for: .normal)
     }
     */
    // '만약 lable_custom의 텍스트가 pencil을 포함하면 버튼 셋이미지를 search로 바꾸어라'이다.
    // 그리고 viewController에
    /*
     let customCell = tableView_custom.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CustomCell
     */
    // 하지만 여기서 dequeueReusableCell를 썼다.
    // https://blog.naver.com/smui04129/222901659262
    // swift는 메모리 할당을 했다가 큐를 지워서 메모리를 효율적으로 사용한다.
    // 이게 한 큐가 셀 여러개를 포함하는데 화면에서 보이는 셀보다 위아래로 한개 혹은 두개 혹은 여러개로 지정할 수 있다.
    // 디폴트로 3개로 설정되었네 이번에는.
    // 근데 여기서 pencil.circle인 0index를 클릭해서 이미지를 바꿨는데 저 아래에 있는 bolt.circle가 바뀌었다.
    // 그래서 형한테 custumCell에 잇는 316~320줄 코드랑 325~326줄이랑 충돌하는 거 아니냐고 했는데
    // customCell은 클릭을 했을 때 코드가 실행되는거고,
    // ViewController에서는 큐에 대해서 실행되기 때문에 별개라는 답을 얻었다.
}
