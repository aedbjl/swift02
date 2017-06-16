//
//  File.swift
//  20170615
//
//  Created by iii-user on 2017/6/15.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import Foundation
class c1 {
    
}

var obj1 = c1() //物件


class c2 {   //建構式 => 1.沒有func() 2.沒有 return (->) 3. 物件初始化=>屬性
    init(){
        print("init")
    }
}
var obj2 = c2 ()

class c3 {
    var x = 1
    var y = 1
    init(){
        
    }
}

var obj3 = c3()
// print(obj3.x) //屬性中的成員

//class c4 {
//    var x : Int
//    var y : Int
//}
//var obj4 = c4()  //因為未完成初始化，所以不通過編譯，但是java可以．

class c4{
    var x :Int
    var y :Int
    //    init(newx:Int, newy:Int){
    //        x = newx ; y = newy
    //    }  1.
    init(x:Int, y:Int){
        self.x = x ;self.y = y
    }   // 2.
    func m1() -> Int {
        return 123
    }
}
var obj4 = c4(x:3, y:4)
//print(obj4.x)
//print(obj4.m1())

class Bike {
    private var x : Double //慣例屬性需封裝
    
    init(_ x :Double ){
        self.x = x
    }
    func m1(){
        x = x < 1 ? 1 : x * 1.2
    }
    func m2(){
        x = x < 1 ? 0 : x * 0.7
    }
    func m3()->Double{
        return x
    }
        func clone() -> Bike{
            return Bike(x)
        }
}
class c6 {
    init(){
        print("c6:init()")
    }
    func m1(){
        print("c6:m1()")
    }
}
class c5 {
    var p1 = c6()
    lazy var p2:c6 = c6()
    func doSomething(){
        print("ok")
        p2.m1()
    }
}

struct MyClass3 {
    var x = 1
    var y = 1
}
struct MyClass4 {
    var v1 = MyClass3()
    var v2 : MyClass3{
        get {
            let newx = v1.x + 10
            let newy = v1.y + 20
            return MyClass3(x:newx, y :newy)
        }
        set(aClass3obj) {
            v1.x = aClass3obj.x - 10
            v1.y = aClass3obj.y - 30
            }
    }
    var v3:MyClass3{
        //{...}中可以使用原先定義的屬性
        //定義 getter & setter 
        //透過 v3 的取值(getter)＝＝> xxx = v3
        //setter => v3 = xxx
        get{
            return MyClass3(x: 1, y: 2)
        }
        set (aVar){
            //aVar 一定是 MyClass 3 ,預設則為newVlaue
        }
    }
}

class MyScore {
    var x = 0, y = 0 , z = 0;
    var sum:Int {//因 x, y ,z  而不同
        get{
            return x + y + z
        }
    }
    var avg : Double {
        
            return Double(sum) / 3.0
        //get 可以省略
    }
}

class MyClass5{
    var x :Int = 0{
        willSet(newx){
            print("before:\(x)-->\(newx)")
        }
        didSet{
            x = 0
            print("after:\(x)")
        }
    }
    
}

struct Mystruct1{
    var a = 1
    mutating func f1(){
        //a = 2 結構不行
        a = 2 // mutating 時才可以
        print(a)
        self = Mystruct1(a:100)
    }
}
class MyClass1{
    var a = 1
    func f1(){
        a = 2
        print(a)
    }
}
