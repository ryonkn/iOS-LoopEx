//
//  LoopEx.swift
//  LoopEx
//
//  Created by Ryo Nakano on 2015/02/13.
//  Copyright (c) 2015年 Peppermint Club. All rights reserved.
//

import UIKit

class LoopEx: UIView {
    
    // 描画時に呼ばれる
    override func drawRect(rect: CGRect) {
        // for文による計算
        var sum0 = 0
        for var i = 1; i <= 100; i++ {
            sum0 += i
        }
        
        //while文による計算
        var sum1 = 0
        var j = 1
        while j <= 100 {
            sum1 += j
            j++
        }
        
        // ループの途中での脱出
        var sum2 = 0
        var k = 0
        while true {
            k++
            if k > 100 {break}
            if k % 2 != 0 {continue}
            sum2 += k
        }
        
        // 表示
        drawString("forの計算結果:\(sum0)", x: 0, y: 20)
        drawString("whileの計算結果:\(sum1)", x: 0, y: 20+26)
        drawString("100以下の偶数の和:\(sum2)", x:0, y: 20+26*2)
    }
    
    func drawString(str: String, x: Int, y: Int) {
        let attrs = [NSFontAttributeName: UIFont.systemFontOfSize(24)]
        let nsstr = str as NSString
        nsstr.drawAtPoint(CGPointMake(CGFloat(x), CGFloat(y)), withAttributes: attrs)
    }
    
}
