//
//  ViewController.swift
//  album
//
//  Created by 阿姆 on 2022/7/29.
//

import UIKit

class ViewController: UIViewController {
    let albums = ["成名在望", "玫瑰少年", "頑固"]
    let lyrics = [
    """
    那黑的終點可有光 那夜的盡頭可會亮
    那成名在望 會有希望 或者是 無知的狂妄
    那又會怎麼樣 「那又會怎麼樣？」

    混跡過酒場的駐唱 才讀懂人性的尋常
    背負過音樂節的重量 才體會每場仗
    都仰賴 槍與糧

    夢是把熱血和 汗與淚 熬成湯
    澆灌在乾涸的 貧瘠的 現實上
    當日常的重量 讓我們 不反抗
    倒地後才發現 荒地上 渺茫 希望 綻放
    """,
    
    """
    哪朵玫瑰 沒有荊棘
    最好的 報復是 美麗
    最美的 盛開是 反擊
    別讓誰去 改變了你
    你是你 或是妳 都行
    會有人 全心的 愛你

    玫瑰少年 在我心裡
    綻放著 鮮豔的 傳奇
    我們都 從來沒 忘記
    你的控訴 沒有聲音
    卻傾訴 更多的 真理
    卻喚醒 無數的 真心
    """,
    
    """
    一次一次你 吞下了淚滴
    一次一次 拼回破碎自己
    一天一天你 是否還相信
    活在你心深處 那頑固自己

    你追逐 你呼吸 你囂張 的任性
    鼻青臉腫的哭過 若無其事的忘記
    如果你 能預知 這條路 的陷阱
    我想你 依然錯得很過癮
    """
    ]
    
    //定義一個變數以利後續作業
    var index = 0
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var lyricsLabel: UILabel!
    @IBOutlet weak var albumSegmentedControl: UISegmentedControl!
    @IBOutlet weak var albumPageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //設一個function好把重複的指令包起來之後再代入
    func updateUI() {
        albumImageView.image = UIImage(named: albums[index])
        lyricsLabel.text = lyrics[index]
        albumSegmentedControl.selectedSegmentIndex = index
        albumPageControl.currentPage = index
    }
    
    //Segment設定
    @IBAction func selectAlbum(_ sender: Any) {
        index = albumSegmentedControl.selectedSegmentIndex
        updateUI()
    }
    
    //Page Control設定
    @IBAction func changePageControl(_ sender: Any) {
        index = albumPageControl.currentPage
        updateUI()
    }
    
    //左Button設定
    @IBAction func pre(_ sender: Any) {
        
        //用餘數的方式
        //index = (index + 1) % albums.count
        
        //用迴圈的方式
        index -= 1
        if index < 0 {
            index = albums.count - 1
        }
        updateUI()
    }
    
    //右Button設定
    @IBAction func next(_ sender: Any) {

        index += 1
        if index == albums.count {
            index = 0
        }
        updateUI()
    }
    
    //Swipe圖片左右滑動設定
    @IBAction func changePage(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .left {
            index += 1
            if index == albums.count {
                index = 0
            }
            updateUI()
        } else if sender.direction == .right {
            index -= 1
            if index < 0 {
                index = albums.count - 1
            }
            updateUI()
    }
  }
}
