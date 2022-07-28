import UIKit

//設定圖片
let wolfImage = UIImage(named: "wolf.jpeg")
let wolfImageView = UIImageView(image: wolfImage)

wolfImageView.frame = CGRect(x: 0, y: 0, width: 600, height: 320)
wolfImageView.contentMode = .scaleAspectFill
wolfImageView.alpha = 0.9

//設定文字
let messageLabel = UILabel(frame: CGRect(x: 100, y: 110, width: 200, height: 50))
messageLabel.text = "Grrrrrrr"
messageLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
messageLabel.font = UIFont.systemFont(ofSize: 60)
wolfImageView.addSubview(messageLabel)

//設定圓角
wolfImageView.layer.borderWidth = 20
wolfImageView.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
wolfImageView.layer.cornerRadius = 50
wolfImageView.clipsToBounds = true

//使用迴圈讓腳印環繞圖片
var x = 40
for _ in 0...7 {
    let pawLabel = UILabel(frame: CGRect(x: x, y: 30, width: 70, height: 70))
    pawLabel.text = "🐾"
    pawLabel.font = UIFont.systemFont(ofSize: 30)
    x += 40
    wolfImageView.addSubview(pawLabel)
}

var y = 70
for _ in 0...4 {
    let pawLabel = UILabel(frame: CGRect(x: 40, y: y, width: 70, height: 70))
    pawLabel.text = "🐾"
    y += 40
    pawLabel.font = UIFont.systemFont(ofSize: 30)
    wolfImageView.addSubview(pawLabel)
}


