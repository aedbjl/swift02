//
//  main.swift
//  20170615
//
//  Created by iii-user on 2017/6/15.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import Foundation


class st{
    var sid:String
    var x : Int
    var y : Int
    var a : Int
    init(_ sid:String ,_ x:Int,_ y:Int,_ a:Int){
        self.sid = sid;self.x = x ;self.y = y;self.a = a
    }
    func m1() ->Int {
        return x + y + a
    }
    func m2() -> Double{
        return Double(m1()) / 3.0
    }
}
//var s1 = st("S01",90,30,32)
//var s2 = st("S01",90,30,32)
//print(s1 === s2)
//var s3 = s1
//print( s1 === s3)


//var s1 = st("S01",90,30,32)
//var s2 = st("S02",30,10,50)
//print(s1.m1())
//print(s1.m2())
//print(s2.m1())
//print(s2.m2())
//
//var s3 = s1
//print(s3.m1())
//print(s3.m2())
//
//s1.x = 100
//print(s1.m1())
//print(s1.m2())
//
//print(s3.m1())
//print(s3.m2())

//class Bike {
//    private var x : Double //慣例屬性需封裝
//    var y : Int
//    init(_ x :Double , _ y :Int){
//        self.x = x ; self.y = y
//    }
//    func m1(){
//        x = x < 1 ? 1 : x * 1.2
//    }
//    func m2(){
//        x = x < 1 ? 0 : x * 0.7
//    }
//    func m3()->Double{
//        return x
//    }
////    func clone() -> Bike{
////        return Bike(x)
////    }
//}

var b1 = Bike(0)

print(b1.m3())

b1.m1();b1.m1();b1.m1();b1.m1();b1.m2()
print(b1.m3())


var b3 = b1
print (b3 === b1)

var b4 = c5()
b4.doSomething()
b4.doSomething()

print("----------")
var a1 = MyClass3()
a1.x = 33; a1.y = 44;

var a3 = MyClass4()

print(a3.v1.x)
a3.v2 = a1
print(a3.v2.x)
print(a3.v1.x)


var bb5 = a3.v2  //bb5 is a struct(MyClass3)
print(a3.v1.x)
print(bb5.x)


var ss1 = MyScore()
ss1.x = 100; ss1.y = 80 ;ss1.z = 70;
print(ss1.sum)
print(ss1.avg)
print("----------")
var ss5 = MyClass5()
print(ss5.x)
ss5.x = 123
