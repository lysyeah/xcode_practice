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
          // 밑에 32번줄의 self는 class Test를 말하는것이다.
//        self.myPersonList = [Person(name: "이용수", age: "32", height: "184"), Person(name: "김응엽", age: "33", height: "170")]
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tblView.reloadData()
        
        
        /*
         if let을 써서 옵셔널 기능을 할 수 있다.
         만약 myPersonList의 Array의 목록이 있으면 newName을 실행하는데, '1번 index의 이름'을 실행하라.
         만약 배열이 없으면 '이름이 입력되지 않았습니다'을 프린트해라.
         이게 어떻게 매커니즘이 되냐면,
         Person의 var name의 타입을 optional(?)을 해두었고, var personList: [Person]?을 해두었고,
         var myPersonList = Persons().personList을 했기 때문에
         name이 있으면 newName을 실행하는거고, 없으면 '이름이 입력되지 않았습니다'이 실행되는 것이다.
        
         UIButton, UIViewController 등은 옵셔널일 수 없다.
        
         아 그리고 optional은 Int 타입에는 일반적으로 사용하지 않나보다.
         그래서 var name에 String을 사용한 것이다.
        
         swift는 nil값을 허용하지 않는다. runtime error Or compile에러가 생긴다.
         여기서 compile에러가 왜 생기는지 알아보자. 모르겠다. 그냥 Compile에 대해서 공부해야지.
        */
        if let newName = myPersonList?[1].name {
            testName = newName
        } else {
            testName = "이름이 입력되지 않았습니다."
        }
        // 다른 예시로도 Optional Chaining을 보자.
        // 회원가입을 할 때 만약 name넣는 칸에 optional로 설정해서 비워도 회원가입이 완료가 되었다고 치자.
        // 서버에서 이름이 호출되었을 때 그 값을 가져와야하는데 없다면 nil로 표현하고, 있다면 그 값을 가져온다.
        // 참고하면 좋은 사이트. 밑에 있는 내용도 이 사이트 내용이다.
        // https://www.zehye.kr/swift/2020/03/05/swift_optional_interview/
        /*
         옵셔널 체이닝은 하위 프로퍼티에 옵셔널값이 있는지 없는지를 연속적으로 확인하면서 중간에 하나라도 nil이 존재함다면 nil이 반환되는 형식을 의미한다.
         let roomCount = zehye.residence?.numberOfRoomes
         위처럼 진행하는 방식이 옵셔널 체이닝이다. 이때 zehye의 residence가 nil이 아니라면 다음으로 넘어가 residence의 numberOfRoomes를 확인하게 될 것이다. 만약 zehye의 residence가 nil이라면 뒤의 else문을 수행하게 될 것이다. 그런데 이때 residence 뒤에 왜 ?가 붙을까?

         그 이유는 residence가 nil을 반환할 수도 있고 아닐수도 있기 때문이다.

         즉 하위 프로퍼티에 옵셔널 값이 있는지 연속적으로 확인하면서 중간에 하나라도 nil이 발견된다면 nil을 반환하는 것을 옵셔널체이닝 방식이라고 한다.

         그러면 이때 roomCount의 타입은 무엇일까? 당연히 옵셔널 타입일 것이다. 즉 우리가 특별히 지정해주지 않았음에도 불구하고 roomCount의 타입은 옵셔널임을 알 수 있다. 그 이유는 zehye.residence?.numberOfRoomes가 nil을 반환할 수도 있고 아닐수도 있기 때문이다.
         */
    }
}
