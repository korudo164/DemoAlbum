import Cocoa

//華氏換算攝氏
func fahrenheiToCesius(fahrenheit: Double) -> Double{
    let cesius = (fahrenheit - 32) * 5 / 9
    return cesius
}
let celsius1 = fahrenheiToCesius(fahrenheit: 50)
let celsius2 = fahrenheiToCesius(fahrenheit: 100)

//梯形面積
func trapezoidArea(num1: Double, num2:Double, num3:Double) -> Double{
    let area = (num1 + num2) * num3 / 2
    return area
}
let area1 = trapezoidArea(num1:10, num2:20, num3:5)
let area2 = trapezoidArea(num1:20, num2:30, num3:5)

//寶寶睡覺
class Baby {
    var age = 1
    var name = "amu"
    
    func sleep(hour:String, min:String){
        print("睡了" + hour + "小時" + min + "分鐘")
    }
}
var cutebaby = Baby()
cutebaby.sleep(hour: "10", min: "10")
