//
//  GreenViewController.swift
//  YuchinanteKadai8
//  
//  Created by Yuchinante on 2023/11/06
//  
//

import UIKit

class GreenViewController: UIViewController {
    @IBOutlet weak var label: UILabel! // ユーザーに表示されるラベル
    @IBOutlet weak var slider: UISlider! // ユーザーが操作するスライダー

    @IBAction func changeSlider(_ sender: Any) {
        let sliderValue = slider.value // スライダーの値を取得

        // AppDelegateを使用してデータを共有
        let delegate = UIApplication.shared.delegate as! AppDelegate
        delegate.shareData = sliderValue

        label.text = "\(sliderValue)" // ラベルにスライダーの値を表示
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // AppDelegateからデータを取得して表示
        let delegate = UIApplication.shared.delegate as! AppDelegate
        label.text = "\(delegate.shareData)" // ラベルに共有データを表示
        slider.value = delegate.shareData // スライダーの位置を共有データに合わせて設定
    }
}
